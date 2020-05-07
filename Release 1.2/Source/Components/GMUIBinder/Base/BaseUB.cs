namespace GMUIBinder.Base
{
    using System;
    using System.Web;
    using System.Web.UI;

    using GMUtilities;
    using GMConstants;
    using GMWebUtilities;
    using GMUIDetail.Base;
    using GMUIDetail.Enums;
    using GMUtilities.Security;
    using GMFacade.Security;
    using GMUIDetail.Security;

    public abstract class BaseUB:IDisposable
    {
        #region Members
        protected Authentication m_sf = null;
        protected BasePage m_cpage = null;
        #endregion
        
        #region Constructor
        public BaseUB() { m_sf = new Authentication(); m_cpage = (BasePage)HttpContext.Current.Handler; } 
        #endregion

        #region Public Methods
        public BaseDC GetHeaderToken(BaseDC bdc)
        {
            DCUser2 dcusr = GetToken();
            bdc.IsActive = dcusr.IsActive;
            bdc.IsChangePasssword = dcusr.IsChangePasssword;
            bdc.IsLocked = dcusr.IsLocked;
            bdc.UserID = dcusr.ID;
            bdc.Username = string.Format("( {0} {1}, Log-in Time: {2} )", dcusr.FirstName, dcusr.LastName, dcusr.LastLogon.Value.ToShortTimeString());
            return bdc;
        }

        public bool HasPermission(Permission pn)
        {
            bool rv = false;
            DCUser2 user = GetToken();
            if (user != null) rv = user.Permissions.Contains((int)pn);
            return rv;
        }
        #endregion

        #region Protected Methods
        protected string GetSessionID()
        {
            return System.Web.HttpContext.Current.Session.SessionID;
        }
        #endregion
        
        #region Private Methods
        DCUser2 GetToken()
        {
            return m_sf.GetCache(CryptoUtils.EncryptTripleDES(GetSessionID()));
        }
        #endregion

        #region Dispose
        public virtual void Dispose()
        {
            m_sf.Dispose();
        }
        #endregion
    }
}
