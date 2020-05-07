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
    using GMUIDetail.Entity;
    using GMUIBinder.Entity;

    [GMUtilities.ClassAttrib.Handler(UIHandlerConstants.RecordCaseAspx)]
    public partial class RecordCase : BasePage
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
                if (!this.IsPostBack) { Set(); ddlActionID.Add(string.Empty, 0); ddlVendorID.Add(string.Empty, 0); ddlCaseTypeID.Add(string.Empty, 0); ddlCountyID.Add(string.Empty, 0); }
                hdnRecordId.Value = PageID.ToString();
                btnCancel.Click += delegate { Redirect(UIConstants.RecordPipelineAspx); };
                btnSave.Click += OnSave;
                btnAddCase.Click += OnAdd;
                if (!HasPermission(GMUIDetail.Enums.Permission.EditRecord)) DisableControls();
                ddlCountyID.Enabled = HasPermission(GMUIDetail.Enums.Permission.EditCounty);
                ddlCaseTypeID.Enabled = HasPermission(GMUIDetail.Enums.Permission.EditCaseType);
                DisplayByCaseType();
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
        void InitializeComponent()
        {
            this.Load += new EventHandler(Page_Load);
        }

        void OnAdd(object sender, EventArgs ea)
        {
            DCBatchRecord rc = (DCBatchRecord)Save();
            Redirect(UIConstants.CaseAspx, QueryStringConstants.RecordID, rc.ID);
        }

        void OnSave(object sender, EventArgs ea)
        {
            Save();
            Redirect(UIConstants.RecordPipelineAspx);
        }

        void DisplayByCaseType()
        {
            bool iscivil = GMConvert.GetBool(hdnIsCivil.Value);
            DataUtils.SetVisible(grdCase, (int)ColumnOrder.ViolationDate, !iscivil);
            DataUtils.SetVisible(grdCase, (int)ColumnOrder.FileDate, !iscivil);
            DataUtils.SetVisible(grdCase, (int)ColumnOrder.DispoDate, !iscivil);
            DataUtils.SetVisible(grdCase, (int)ColumnOrder.CaseCount, !iscivil);
            DataUtils.SetVisible(grdCase, (int)ColumnOrder.ProbationType, !iscivil);
            DataUtils.SetVisible(grdCase, (int)ColumnOrder.FileFee, !iscivil);
            DataUtils.SetVisible(grdCase, (int)ColumnOrder.Restitution, !iscivil);
            DataUtils.SetVisible(grdCase, (int)ColumnOrder.DistrictCourt, iscivil);
            DataUtils.SetVisible(grdCase, (int)ColumnOrder.CaseTypeLevel, iscivil);
            DataUtils.SetVisible(grdCase, (int)ColumnOrder.CaseName, iscivil);
            DataUtils.SetVisible(grdCase, (int)ColumnOrder.Plaintiff, iscivil);
            DataUtils.SetVisible(grdCase, (int)ColumnOrder.Defendant, iscivil);
            DataUtils.SetVisible(grdCase, (int)ColumnOrder.StatusJudgment, iscivil);
        }
        #endregion
    }
}
