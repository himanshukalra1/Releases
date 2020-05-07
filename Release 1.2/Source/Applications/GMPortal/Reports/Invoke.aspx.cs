namespace GMPortal.Entity
{
    using System;
    using System.Reflection;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.Web.UI.WebControls;
	
	using GMUtilities;
    using GMConstants;
    using GMWebUtilities;
    
    public partial class Invoke : BasePage
    {
        #region Events
        protected override void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        protected override void Page_Load(object sender, System.EventArgs e)
        {
            try
            {
                base.Page_Load(sender, e);
                InvokeReport();
            }
            catch (Exception exp)
            {
                DisplayError(exp);
            }
        } 
        #endregion

        #region Overrides
        protected override int PageID { get { return GetQueryValue<Int32>(QueryStringConstants.RecordID); } }
        #endregion

        #region Methods
        private void InitializeComponent()
        {
            this.Load += new EventHandler(Page_Load);
        }

        protected void InvokeReport()
        {
            Dictionary<string, dynamic> rparams = new Dictionary<string, dynamic>();
            ReportType rpt = (ReportType) Enum.Parse(typeof(ReportType), GetQueryValue<string>(QueryStringConstants.ReportType));
            switch (rpt)
            {
                case ReportType.RISCaseReport:
                    rparams.Add(ReportConstants.RecordID, PageID);
                    break;
                case ReportType.RISRecord:
                    rparams.Add(ReportConstants.FromDate, GetQueryValue<DateTime>(QueryStringConstants.FromDate));
                    rparams.Add(ReportConstants.ToDate, GetQueryValue<DateTime>(QueryStringConstants.ToDate));
                    rparams.Add(ReportConstants.RecordStausID, GetQueryValue<int>(QueryStringConstants.RecordStausID));
                    break;
            }
            GMWebUtilities.Report.Invoke.Render(this, rpt, GMWebUtilities.Report.Types.PDF, rparams);
        }
        #endregion
    }
}
