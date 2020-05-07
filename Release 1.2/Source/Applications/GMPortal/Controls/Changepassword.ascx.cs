namespace GMPortal.Controls
{
    using System;
    using System.Web;
    using System.Web.UI.WebControls;
    using System.Web.UI.HtmlControls;
	
	using GMUtilities;
    using GMConstants;
    using GMWebUtilities;

    public partial class Changepassword : BaseGMUC
    {
        #region Properties
        public string PasswordNote
        {
            get { return ErrorConstants.Passwordmatch; }
        }
        #endregion

        #region Events
        protected override void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        protected override void Page_Load(object sender, EventArgs e) { base.Page_Load(sender, e); btnChangePassword.Click += OnSave; }

        protected override void OnPreRender(EventArgs e)
        {
            base.OnPreRender(e);
            btnChangePassword.OnClientClick = string.Format("return {0}('{1}','{2}')", UCConstants.Validatepasswords,
                txtNewPassword.Instance.ClientID, txtConfirmNewPassword.Instance.ClientID);
        }
        #endregion

        #region Private Methods
        private void InitializeComponent() { this.Load += new EventHandler(Page_Load); }

        protected void OnSave(object sender, EventArgs ea)
        {
            GMReflectionUtils.InvokeMember(this.Page, ReflectionConstants.Save, new object[] { ReflectionConstants.ChangePassword },EnumConstants.InvokeMethod);
            GMReflectionUtils.InvokeMember(this.Page, ReflectionConstants.Redirect, new object[] { UIConstants.DefaultAspx },EnumConstants.InvokeMethod);
        }
        #endregion
    }
}