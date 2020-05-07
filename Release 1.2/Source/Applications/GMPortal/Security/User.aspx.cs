namespace GMPortal
{
    using System;
    
	using GMUtilities;
	using GMUIDetail;
    using GMConstants;
	using GMWebUtilities;
    

    [GMUtilities.ClassAttrib.Handler(UIHandlerConstants.UserAspx)]
	public partial class User : BasePage
    {
        #region Private Method
        void InitializeComponent()
        {
            this.Load += new EventHandler(Page_Load);
        }

        void ManageControl()
        {
            bool hasid = (PageID > 0);
            if (!hasid) ckbActive.Value = true;
            btnDelete.Enabled = hasid;
            ckbIsPasswordChangedManual.Enabled = hasid;
            txtPassword.Enabled = !hasid;
            ddlTypeID.Enabled = !hasid;
            if (hasid)
            {
                string scriptContent = string.Format("{0}('{1}','{2}','{3}','{4}')", UCConstants.CheckboxValidationHandle, ckbIsPasswordChangedManual.Instance.ClientID, txtPassword.RFVInstance.ClientID, txtPassword.LBLInstance.ClientID, txtPassword.Instance.ClientID);
                ckbIsPasswordChangedManual.OnClientClick = scriptContent;
                this.ClientScript.RegisterStartupScript(typeof(string), this.GetType().Name, scriptContent, true);
            }
        }
        #endregion

        #region Properties
        protected override int PageID { get { return GetQueryValue<Int32>(QueryStringConstants.UserID); } }

        public string IsCreate { get { return GetQueryValue<string>(QueryStringConstants.Create); } } 
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
                btnCancel.Click += delegate { Redirect(UIConstants.UsersAspx); };
                btnSave.OnClientClick = string.Format("{0} selectoptions('{1}','Group(s)')", UCConstants.Return, tltGroups.SelectedInstance.Instance.ClientID);
                btnSave.Click += OnSave;
                btnDelete.Click += OnDelete;
                if (!this.IsPostBack)
                {
                    Set();
                    ManageControl();
                }
                if (!HasPermission(GMUIDetail.Enums.Permission.Administration)) DisableControls();
            }
            catch (Exception exp)
            {
                DisplayError(exp);
            }
        } 
        #endregion

        #region Methods
        private void OnSave(object sender, EventArgs ea)
        {
            Save();
            Redirect(UIConstants.UsersAspx);
        }

        protected void OnDelete(object sender, EventArgs ea)
        {
            Delete();
            Redirect(UIConstants.UsersAspx);
        } 
        #endregion
	}
}