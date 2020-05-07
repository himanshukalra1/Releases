namespace GMWebUtilities.Report
{
    using System;
    using Reports;
    using GMUtilities;
    using System.Net;
    using System.Web;
    using System.Web.UI;
    using System.Collections.Generic;
    using System.Web.Services.Protocols;
    
    public class Invoke
    {
        #region Content-Types
        static Dictionary<Types, string> m_ctypes = new Dictionary<Types, string>() { 
            { Types.Excel, "application/vnd.ms-excel" }, 
            { Types.PDF, "application/pdf" } 
        };
        #endregion

        #region Methods
        public static void Render(Page target, GMConstants.ReportType rpt, Types type, Dictionary<string, dynamic> dparams)
        {
            try
            {
                using (InvokeServer ins = new InvokeServer())
                    WriteToPage(target, ins.GetReport(rpt.ToString(), type, dparams), type);
            }
            catch (Exception ex) { throw ex; }
        }
        #endregion
    
        #region Private Methods
        static void WriteToPage(Page target, byte[] data, Types type)
        {
            target.Response.ClearContent();
            target.Response.ClearHeaders();
            target.Response.ContentType = m_ctypes[type];
            target.Response.BinaryWrite(data);
            target.Response.Flush();
            target.Response.Close();
        }
        #endregion
    }

    #region Report-Types
    public enum Types
    {
        Excel,
        PDF
    }
    #endregion

    internal class InvokeServer: IDisposable
    {
        #region Constants
        string m_deviceinfo = "<DeviceInfo><Toolbar>False</Toolbar><OUTPUTFORMAT>JPEG</OUTPUTFORMAT></DeviceInfo>";
        string m_exconfig = "Please make sure Report-Server URL and Reports Folder name is configured in web.config.";
        #endregion

        #region Members
        ReportExecutionService m_res = null;
        #endregion

        #region Constructor
        internal InvokeServer() { m_res = new ReportExecutionService(); }
        #endregion

        #region Report-Types
        Dictionary<Types, string> m_rtypes = new Dictionary<Types, string>() { 
            { Types.Excel, "xls" }, 
            { Types.PDF, "pdf" } 
        };
        #endregion

        #region Methods
        public byte[] GetReport(string reportname, Types type, Dictionary<string, dynamic> dparams)
        {
            if (string.IsNullOrEmpty(m_res.Url) || string.IsNullOrEmpty(GMConfig.ReportsFolder))
                throw new ApplicationException(m_exconfig);

            byte[] rv = null;
            if (!string.IsNullOrEmpty(GMConfig.ReportUser) && !string.IsNullOrEmpty(GMConfig.ReportPwd))
                m_res.Credentials = new NetworkCredential(GMConfig.ReportUser, GMConfig.ReportPwd, string.Empty);
            else
                m_res.Credentials = System.Net.CredentialCache.DefaultCredentials;

            m_res.ExecutionHeaderValue = new ExecutionHeader();

            string historyid = null, encoding, mimetype, extension;
            Warning[] warnings = null;
            string[] streamids = null;

            try
            {
                m_res.Timeout = -1;
                m_res.LoadReport(string.Format("/{0}/{1}", GMConfig.ReportsFolder, reportname), historyid);
                m_res.SetExecutionParameters(GetParams(dparams), "en-us");
                rv = m_res.Render(m_rtypes[type], m_deviceinfo, out extension, out  mimetype, out encoding, out warnings, out streamids);
            }
            catch (SoapException e)
            {
                throw new ApplicationException(e.Detail.OuterXml, e);
            }
            
            return rv;
        }
        #endregion

        #region Private Methods
        ParameterValue[] GetParams(Dictionary<string, dynamic> dparams)
        {
            List<ParameterValue> rv = new List<ParameterValue>();
            foreach(KeyValuePair<string, dynamic> kvp in dparams)
            {
                ParameterValue pv = new ParameterValue();
                pv.Name = kvp.Key;
                pv.Value = kvp.Value.ToString();
                rv.Add(pv);
            }
            return rv.ToArray();
        }
        #endregion

        #region Dispose
        public void Dispose()
        {
            m_res.Dispose();
        }
        #endregion
    }
}
