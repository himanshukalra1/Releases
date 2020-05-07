namespace GMPortal.Controls
{
    using System;
    using System.Web;

    using GMUtilities;
    using GMConstants;
    using GMWebUtilities;
    using GMUIBinder.Security;
    using GMUIDetail.Security;

    public partial class LogIn : BaseGMUC
    {
        #region Page events
        protected override void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        private void InitializeComponent() { this.Load += new EventHandler(Page_Load); }

        protected override void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);
            RenderStartupScript(UCConstants.SetFocus, string.Format("{0}('{1}');", UCConstants.SetFocus, txtUserID.Instance.ClientID));
            this.Page.ClientScript.RegisterHiddenField(ViewStateConstants.EventTarget, btnSignin.Instance.ClientID);
            btnSignin.Click += OnSign_In;
            this.Page.Form.DefaultButton = btnSignin.Instance.UniqueID;
        }

        protected void OnSign_In(object sender, System.EventArgs e)
        {
            try
            {
                BasePage bp = (BasePage)this.Page;
                bp.PasswordAttempt = ((Int16)(bp.PasswordAttempt + 1));
                ValidateUser(bp.PasswordAttempt, UIConstants.DefaultAspx);
            }
            catch (Exception ex)
            {
                GMReflectionUtils.InvokeMember(this.Page, ReflectionConstants.MasterDisplayError, new object[] { ex }, EnumConstants.InvokeMethod);
            }
        }
        #endregion

        #region Functions
        private void ValidateUser(Int16 PasswordAttempt, string returnURL)
        {
            AuthenticationUB auth = new AuthenticationUB();
            DCUser2 dcuser = null;
            try
            {
                dcuser = auth.AuthenticateUser(this.Page.Session.SessionID, txtUserID.Value, txtPassword.Value, PasswordAttempt);
                GMReflectionUtils.InvokeMember(this.Page, ReflectionConstants.ValidateToken, new object[] { dcuser, txtUserID.Value, returnURL }, EnumConstants.InvokeMethod);
            }
            catch (Exception ex) { throw ex; }
            finally
            {
                auth = null;
                dcuser = null;
            }
        }
        #endregion
    }
}