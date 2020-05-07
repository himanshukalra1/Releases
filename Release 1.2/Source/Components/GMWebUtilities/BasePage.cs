namespace GMWebUtilities
{
    #region using
    using System;
    using System.Web;
    using System.Text;
    using System.Web.UI;
    using System.Web.Security;
    using System.Web.UI.WebControls;

    using GMUtilities;
    using GMConstants;
    using GMUIDetail.Base;
    using GMUIDetail.Enums;
    using GMUtilities.Security;
    using GMUtilities.ClassAttrib;
    #endregion

    public class BasePage : System.Web.UI.Page
    {
        #region Members
        string m_query = string.Empty;
        dynamic m_authub = null;
        #endregion

        #region Constructor
        public BasePage() { m_authub = GMReflectionUtils.GetInstance(UIBinderHandlerConstants.AuthenticationUB); }
        #endregion
        
        #region Private Methods
        string GetQueryValue(string qname)
        {
            return GMConvert.GetString(this.Request.QueryString[qname]);
        }

        BaseDC GetDCInstance()
        {
            Handler hr = GMReflectionUtils.GetHandler<Handler>(this.GetType());
            return (BaseDC)GMReflectionUtils.GetInstance(hr.TypeH);
        }

        dynamic ExecuteAction(string actionname, Int32 ID)
        {
            return ExecuteAction(actionname, GetDCInstance(), ID);
        }

        BaseDC ExecuteAction(string actionname, bool isgetfromctl)
        {
            BaseDC bdc = GetDCInstance();
            if (PageID > 0) bdc.ID = PageID;
            bdc.SessionID = CryptoUtils.EncryptTripleDES(SessionID);
            if (isgetfromctl) FillUIValues(bdc);//To save information get the values from the control
            bdc = (BaseDC)ExecuteAction(actionname, bdc, bdc);
            ValidateToken(bdc);
            if (!isgetfromctl) UIUtilities.SetlValues(this.ControlsCollection, new object[] { bdc }); //To set value back to the control from Datacontract.
            return bdc;
        }

        dynamic ExecuteAction(string actionname, BaseDC bdc, object param)
        {
            dynamic di = GMReflectionUtils.GetInstance(GMReflectionUtils.GetHandler<Handler>(bdc.GetType()).TypeH);
            di.GetHeaderToken(bdc);
            dynamic rv = GMReflectionUtils.InvokeMember(di, actionname, new object[] { param });
            di.Dispose();
            return rv;
        }
        #endregion

        #region Properties
        private object PasswordAttempts
        {
            get { return ViewState[ViewStateConstants.PasswordAttempts]; }
        }

        protected string ReturnURL
        {
            get { return GetQueryValue(QueryStringConstants.ReturnUrl); }
        }

        public Int16 PasswordAttempt
        {
            get { return GMConvert.GetInt16(PasswordAttempts); }
            set
            {
                if (PasswordAttempts != null)
                    ViewState[ViewStateConstants.PasswordAttempts] = value;
                else
                    ViewState.Add(ViewStateConstants.PasswordAttempts, value);
            }
        }

        protected string SessionID
        {
            get { return GMConvert.GetString(Session[ViewStateConstants.SessionID]); }
            set { Session[ViewStateConstants.SessionID] = value; }
        }

        protected ControlCollection ControlsCollection
        {
            get
            {
                ControlsCollectionHandler cch = GMReflectionUtils.GetHandler<ControlsCollectionHandler>(this.GetType());
                Control ctl = this.Master.FindControl(UIConstants.CPHName);
                if (cch != null) ctl = ctl.FindControl(cch.CCParent);
                return ctl.Controls;
            }
        }

        protected virtual Int32 PageID { get { return 0; } }
        #endregion

        #region Virtual Methods
        public virtual dynamic Get()
        {
            return default(dynamic);
        }
        #endregion

        #region Protected Functions
        protected void DisableControls()//Applicable only for master pages
        {
            DisableControls(ControlsCollection);
        }

        protected void DisableControls(ControlCollection cc)
        {
            foreach (Control c in cc)
            {
                try {
                    if (c.HasControls()) DisableControls(c.Controls);
                    else GMReflectionUtils.InvokeProperty(c, ReflectionConstants.Enabled, new object[] { false });
                }
                catch { }
            }
        }

        protected void FillUIValues(BaseDC instance)
        {
            FillUIValues(new BaseDC[] { instance });
        }

        protected void FillUIValues(BaseDC[] instances)
        {
            UIUtilities.FillValues(this.ControlsCollection, instances);
        }

        protected void DisplayError(Exception exp)
        {
            StringBuilder sb = new StringBuilder();
            while (exp != null)
            {
                if (Logger.IsMessageValid(exp.Message))
                    sb.AppendFormat("{0}{1}", exp.Message, GeneralConstants.HTMLNewLine);
                exp = exp.InnerException;
            }
            DisplayError(sb.ToString());
        }

        protected void DisplayError(string errmsg)
        {
            GMReflectionUtils.InvokeMember(this.Master, ReflectionConstants.MasterDisplayError, new object[] { errmsg }, EnumConstants.InvokeMethod);
        }

        protected BaseDC Save()
        {
            return Save(ReflectionConstants.Save);
        }

        protected BaseDC Save(string methodname)
        {
            return ExecuteAction(methodname, true);
        }

        protected void Set()
        {
            Set(ReflectionConstants.Get);
        }

        protected void Set(string methodname)
        {
            ExecuteAction(methodname, false);
        }

        protected void Delete()
        {
            ExecuteAction(ReflectionConstants.Delete, this.PageID);
        }

        protected void Redirect(string url)
        {
            Redirect(url, null);
        }

        protected void Redirect(string url, params object[] qs)
        {
            if (GMConvert.GetString(url).Length > 0)
            {
                Response.Redirect(GetRedirectURL(url, qs));
            }
        }

        protected string GetRedirectURL(string url, params object[] qs)
        {
            if (GMConvert.GetString(url).Length > 0)
            {
                StringBuilder sb = null;
                Int16 len = 0;
                if (qs != null)
                {
                    len = (Int16)qs.GetLength(0);
                    if ((len % 2 == 0) && (len > 1))
                    {
                        sb = new StringBuilder();
                        for (Int16 ix = 0; ix < len; ix++)
                        {
                            if (ix != 0) sb.Append(GeneralConstants.QueryStringSeparator);
                            sb.AppendFormat("{0}{1}{2}", qs[ix], GeneralConstants.EqualOperator, qs[ix + 1]);
                            ix++;
                        }
                    }
                }
                return string.Format("{0}?{1}{2}{3}", string.Format(@"{0}\{1}", Request.ApplicationPath, url), (len != 0) ? GeneralConstants.QueryStringName : string.Empty, (len != 0) ? GeneralConstants.EqualOperator : string.Empty,
                    ((sb != null) ? System.Web.HttpContext.Current.Server.UrlEncode(CryptoUtils.EncryptTripleDES(sb.ToString())) : string.Empty));
            }
            return "";
        }

        protected void ValidateToken(BaseDC bdc)
        {
            ValidateToken(bdc, string.Empty, string.Empty);
        }

        protected void ValidateToken(BaseDC bdc, string userid, string returnurl)
        {
            if (bdc == null)
                throw new ApplicationException(GeneralConstants.UserNotExist);
            else if (bdc.IsActive.HasValue && !bdc.IsActive.Value)
                throw new ApplicationException(GeneralConstants.Useractive);
            else if (bdc.IsLocked.HasValue && !bdc.IsLocked.Value)
                throw new ApplicationException(GeneralConstants.Userlocked);
            else
            {
                Label lblName = (Label)this.Page.Master.FindControl(UCConstants.UserName);
                if (lblName != null) lblName.Text = bdc.Username;
                if (GMConvert.GetString(userid).Length > 0)
                    System.Web.Security.FormsAuthentication.RedirectFromLoginPage(userid, false);
                GMReflectionUtils.InvokeMember(this.Page, ReflectionConstants.Redirect,
                    (bdc.IsChangePasssword.HasValue && bdc.IsChangePasssword.Value == true) ? new object[] { UIConstants.ChangePwdAspx, QueryStringConstants.UserID, bdc.ID } :
                    new object[] { returnurl }, EnumConstants.InvokeMethod);
            }
        }

        protected bool HasPermission(Permission pn)
        {
            return GMReflectionUtils.InvokeMember(m_authub, ReflectionConstants.HasPermission, new object[] { pn });
        }
        #endregion

        #region Public Methods
        public T GetQueryValue<T>(string qsname)
        {
            return UIUtilities.GetQueryValue<T>(m_query, qsname);
        }

        public void LogOut()
        {
            GMReflectionUtils.InvokeMember(GMReflectionUtils.GetInstance(UIBinderHandlerConstants.AuthenticationUB), ReflectionConstants.ClearCache, new object[] { this.SessionID });
            FormsAuthentication.SignOut();
            HttpContext.Current.Session.Remove(ViewStateConstants.SessionID);
            GMUtilities.Logger.LogMessage(ErrorConstants.ClearCache);
            Response.Redirect(FormsAuthentication.LoginUrl);
        }

        public bool HasToken()
        {
            return (Request.Cookies[System.Web.Security.FormsAuthentication.FormsCookieName] != null &&
                GMReflectionUtils.InvokeMember(m_authub, ReflectionConstants.HasToken, new object[] { this.SessionID }));
        }
        #endregion

        #region Events
        protected virtual void Page_Load(object sender, EventArgs e)
        {
            if (SessionID.Length == 0) SessionID = Session.SessionID;
            if (!(this.Request.Url.AbsolutePath.ToLower().IndexOf(UIConstants.LoginAspx) != -1) && !HasToken()) LogOut();
            else
            {
                m_query = GMConvert.GetString(this.Request.QueryString[GeneralConstants.QueryStringName]);
                if (!this.IsPostBack)
                {
                    if (!ClientScript.IsStartupScriptRegistered(UCConstants.Unload))
                        ClientScript.RegisterStartupScript(this.GetType(), UCConstants.Unload, string.Format("{0}('{1}','{2}','{3}');", UCConstants.Unload, UIConstants.DefaultAspx, GeneralConstants.EventTarget, GeneralConstants.Logout), true);
                }
            }
        }
        #endregion
    }
}
