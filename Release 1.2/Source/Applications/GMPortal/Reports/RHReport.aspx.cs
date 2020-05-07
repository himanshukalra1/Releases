using System;

using GMConstants;
using GMWebUtilities;

namespace GMPortal.Reports
{
    [GMUtilities.ClassAttrib.Handler(UIHandlerConstants.RHReportAspx)]
    public partial class RHReport : BasePage
    {
        #region Events
        protected override void Page_Load(object sender, System.EventArgs e)
        {
            try
            {
                base.Page_Load(sender, e);
                if (!this.IsPostBack) Set();
                btnReport.Click += OnReport;
                ddlRecordStatusID.Add(string.Empty, 0);
            }
            catch (Exception exp)
            {
                DisplayError(exp);
            }
        }
        #endregion

        #region Methods
        void OnReport(object sender, EventArgs ea)
        {
            try
            {
                ClientScript.RegisterStartupScript(this.GetType(), this.GetType().ToString(), string.Format("javascript:opennewindow('{0}','Report');", 
                    GetRedirectURL(UIConstants.ReportAspx, QueryStringConstants.FromDate, txtFromDate.Value, QueryStringConstants.ToDate, txtToDate.Value,
                    QueryStringConstants.RecordStausID, ddlRecordStatusID.Value, QueryStringConstants.ReportType, ReportType.RISRecord)), true);
                
            }
            catch (Exception ex) { DisplayError(ex); }
        }
        #endregion
    }
}