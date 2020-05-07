namespace GMPortal.Security
{
    using System;
    using System.Reflection;
    using System.ComponentModel;
	
	using GMUtilities;
	using GMUIDetail;
    using GMConstants;
    using GMWebUtilities;
    using GMUIBinder.Security;

    [GMUtilities.ClassAttrib.Handler(UIHandlerConstants.GroupAspx)]
    public partial class Group : BasePage
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
                if (!this.IsPostBack)
                    Set();
                btnCancel.Click += delegate { Redirect(UIConstants.GroupsAspx); };
                btnSave.OnClientClick = string.Format("{0} selectoptions('{1}','Permission(s)')", UCConstants.Return, tltPermissions.SelectedInstance.Instance.ClientID);
                btnSave.Click += OnSave;
                btnDelete.Click += OnDelete;
                if(!HasPermission(GMUIDetail.Enums.Permission.Administration)) DisableControls();
            }
            catch (Exception exp)
            {
                DisplayError(exp);
            }
        } 
        #endregion

        #region Overrides
        protected override int PageID { get { return GetQueryValue<Int32>(QueryStringConstants.GroupID); } } 
        #endregion

        #region Methods
        private void InitializeComponent()
        {
            this.Load += new EventHandler(Page_Load);
        }

        protected void OnSave(object sender, EventArgs ea)
        {
            Save();
            Redirect(UIConstants.GroupsAspx);
        }

        protected void OnDelete(object sender, EventArgs ea)
        {
            Delete();
            Redirect(UIConstants.GroupsAspx);
        } 
        #endregion
    }
}
