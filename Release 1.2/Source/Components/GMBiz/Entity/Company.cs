namespace GMBiz.Entity
{
    using System;
    using System.Data;
    using System.Collections.Generic;
    using GMDBMap.Entity;
    using GMDBDetail.Entity;
    using GMDB.Entity;
    using GMUtilities;
    using GMConstants;

    public class CompanyBiz : IDisposable
    {
        #region Members
        CompanyDB m_db = null;
        #endregion

        #region Constructors
        public CompanyBiz() : base() { m_db = new CompanyDB(); }
        #endregion

        #region Methods
        public CompanyDetail Get(Int32? ID)
        {
            return ((!ID.HasValue) ? null : m_db.Get(ID));
        }

        public DataTable Get()
        {
            return m_db.Get();
        }

        public DataTable GetActive()
        {
            DataTable dt = Get();
            DataRowCollection drc = dt.Rows;
            foreach (DataRow dr in drc)
                if (!GMUtilities.GMConvert.GetBool(dr[CompanyMap.Active])) dr.Delete();
            dt.AcceptChanges();
            return dt;
        }

        public void Save(CompanyDetail det)
        {
            det.CaseTypeMapping = GetXML(det.CaseTypeMapping);
            det.DTSMapping = GetXML(det.DTSMapping);
            m_db.Save(det);
        }

        public void Delete(Int32? ID)
        {
            m_db.Delete(ID);
        }

        public string GetXML(string filePath)
        {
            
            string strXML = string.Empty;
            try
            {
                if (!string.IsNullOrEmpty(filePath))
                {
                    DataTable dt = ExcelHelper.GetExcelData(filePath);
                    if (dt != null && dt.Rows.Count > 0)
                        strXML = XMLUtilities.Serialize(dt);

                    System.IO.File.Delete(filePath);
                }
            }
            catch (Exception ex)
            {
                Logger.LogException(ex);
                throw new ApplicationException(ErrorConstants.GetExcelError);
            }

            return strXML;
        }
        #endregion

        #region Dispose
        public void Dispose() { m_db.Dispose(); }
        #endregion
    }
}
