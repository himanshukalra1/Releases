namespace GMBiz.Security
{
    using System;
    using System.Data;
    using System.Collections.Generic;

    using GMUtilities;
    using GMConstants;
    using GMDB.Security;
    using GMDBMap.Security;
    using GMDBDetail.Security;

    public class UserBiz:IDisposable
    {
        #region Members
        private UserDB m_db = null; 
        #endregion

        #region Constructor
        public UserBiz() { m_db = new UserDB(); } 
        #endregion

        #region Methods
        public User2Detail AuthenticateUser(string username, string pwd, Int16 pwdattempts)
        {
            Authentication auth = new Authentication();
            User2Detail dtuser = null;
            try
            {
                dtuser = auth.AuthenticateUser(username, pwd, pwdattempts);
            }
            catch (Exception exp) { throw exp; }
            finally
            {
                auth.Dispose();
                auth = null;
            }
            return dtuser;
        }

        public User2Detail Get(Int32? ID)
        {
            return ((!ID.HasValue) ? null : m_db.Get(ID));
        }

        public DataTable Get()
        {
            return m_db.Get();
        }

        public List<Int32> GetGroups(Int32? ID)
        {
            return m_db.GetGroups(ID);
        }

        public void Save(User2Detail detusr)
        {
            Save(detusr, false);
        }

        public void Save(User2Detail detusr, bool ispwdchangemanual)
        {
            if (ispwdchangemanual || !detusr.ID.HasValue || detusr.ID == 0)//when the password is getting changed manually or when a new user is created using the admin application
                detusr.Password = GMUtilities.Security.CryptoUtils.EncryptSHA(detusr.Password);
            m_db.Save(detusr);
        }

        public void Delete(Int32 ID)
        {
            m_db.Delete(ID);
        } 
        #endregion

        #region Dispose
        public void Dispose()
        {

        } 
        #endregion
    }
}
