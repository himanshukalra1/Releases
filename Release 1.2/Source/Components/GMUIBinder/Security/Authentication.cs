namespace GMUIBinder.Security
{
    using System;
    using System.Web;

    using GMConstants;
    using GMUtilities.Security;
    using GMUIDetail.Security;
        
    public class AuthenticationUB:Base.BaseUB
    {
        #region Constructor
        public AuthenticationUB():base() {}
        #endregion

        #region Methods
        public DCUser2 AuthenticateUser(string sessionid,string username, string password, Int16 pwdattempts)
        {
            return m_sf.AuthenticateUser(CryptoUtils.EncryptTripleDES(sessionid), CryptoUtils.EncryptTripleDES(username), 
                                                            CryptoUtils.EncryptTripleDES(password), CryptoUtils.EncryptTripleDES(pwdattempts.ToString()));
        }

        public bool HasToken(string sessionid)
        {
            return m_sf.ValidateToken(CryptoUtils.EncryptTripleDES(sessionid));
        }

        public void ClearCache(string sessionid)
        {
            m_sf.ClearCache(CryptoUtils.EncryptTripleDES(sessionid));
        }
        #endregion
    }
}
