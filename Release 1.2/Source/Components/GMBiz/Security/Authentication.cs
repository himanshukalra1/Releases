namespace GMBiz.Security
{
    using System;

    using GMConstants;
    using GMDB.Security;
    using GMDBDetail.Security;
    using GMUtilities.Security;

    internal class Authentication:IDisposable
    {
        #region Members
        private UserDB m_db = null; 
        #endregion

        #region Constructor
        public Authentication()
        {
            m_db = new UserDB();
        } 
        #endregion

        #region Methods
        public User2Detail AuthenticateUser(string username, string pwd, Int16 pwdattempts)
        {
            return m_db.GetUserLogOn(username, CryptoUtils.EncryptSHA(pwd), pwdattempts, DateTime.Now);
        }

        public void Dispose()
        {
            m_db.Dispose();
        } 
        #endregion
    }
}
