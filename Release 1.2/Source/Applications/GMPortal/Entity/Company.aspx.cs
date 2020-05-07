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

    [GMUtilities.ClassAttrib.Handler(UIHandlerConstants.CompanyAspx)]
    public partial class Company : BasePage
    {
        #region Members
        #endregion

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
                if (!this.IsPostBack) Set();
                btnCancel.Click += delegate { Redirect(UIConstants.CompaniesAspx); };
                btnSave.Click += OnSave;
                btnDelete.Click += OnDelete;
                fluCaseTypeMapping.LNKInstance.Visible = true;
                fluCaseTypeMapping.LNKInstance.Click += delegate { Redirect(UIConstants.ExcelCaseTypeMappingAspx); };
                fluDTSMapping.LNKInstance.Visible = true;
                fluDTSMapping.LNKInstance.Click += delegate { Redirect(UIConstants.ExcelRecordMapping); };
                if (!HasPermission(GMUIDetail.Enums.Permission.Administration)) DisableControls();
            }
            catch (Exception exp)
            {
                DisplayError(exp);
            }
        }
        #endregion

        #region Overrides
        protected override int PageID { get { return GetQueryValue<Int32>(QueryStringConstants.CompanyID); } }
        #endregion

        #region Methods
        private void InitializeComponent()
        {
            this.Load += new EventHandler(Page_Load);
        }

        protected void OnSave(object sender, EventArgs ea)
        {
            try
            {
                Save();
                Redirect(UIConstants.CompaniesAspx);
            }
            catch (Exception exp)
            {
                DisplayError(exp);
            }
        }

        protected void OnDelete(object sender, EventArgs ea)
        {
            try
            {
                Delete();
                Redirect(UIConstants.CompaniesAspx);
            }
            catch (Exception exp)
            {
                DisplayError(exp);
            }
        }
        #endregion

    }
}
