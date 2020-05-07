namespace GMPortal
{
    using System;
    using System.Web;
	
	using GMConstants;
    using GMWebUtilities;
    

    [GMUtilities.ClassAttrib.Handler(UIHandlerConstants.UsersAspx)]
	public partial class Users : BasePage
	{
        #region Methods
        private void InitializeComponent()
        {
            this.Load += new EventHandler(Page_Load);
        }
        #endregion

        #region Overrides
        public override string ID { get { return string.Empty; } } 
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
                if (!this.IsPostBack) Set(ReflectionConstants.Get);
                btnCreate.Click += delegate { Redirect(UIConstants.UserAspx,QueryStringConstants.Create,Boolean.TrueString); };
                btnModify.Click += delegate { Redirect(UIConstants.UserAspx, QueryStringConstants.UserID, lstMembers.Value); };
                btnCancel.Click += delegate { Redirect(UIConstants.DefaultAspx); };
                btnModify.OnClientClick = string.Format("{0}{1}(this,'{2}',true,'from Users list')", UCConstants.Return, UCConstants.Mustselectone, lstMembers.Instance.ClientID);
                lstMembers.DoubleClick = btnModify;
                if (!HasPermission(GMUIDetail.Enums.Permission.Administration)) DisableControls();
            }
            catch (Exception exp)
            { DisplayError(exp); }
        }
        #endregion
    }
}