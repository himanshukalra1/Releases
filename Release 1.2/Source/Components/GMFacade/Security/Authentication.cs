namespace GMFacade.Security
{
    using System;
    using System.Collections.Generic;

    using GMUtilities;
    using GMConstants;    
    using GMBiz.Security;
    using GMUIDetail.Entity;
    using GMUtilities.Security;
    using GMDBDetail.Security;
    using GMUIDetail.Security;

    public class Authentication:Base.Base
    {
        #region Constructor
        public Authentication():base()
        {
            
        } 
        #endregion

        #region Authentication
        public DCUser2 AuthenticateUser(string sessionid, string username, string pwd, string pwdattempts)
        {
            UserBiz m_ubiz = new UserBiz();
            User2Detail dtuser = null;
            DCUser2 dcusr = null;
            GroupBiz m_gbiz = new GroupBiz();
            try
            {
                dtuser = m_ubiz.AuthenticateUser(CryptoUtils.DecryptTripleDES(username), CryptoUtils.DecryptTripleDES(pwd), 
                                                                        GMConvert.GetInt16(CryptoUtils.DecryptTripleDES(pwdattempts)));
                if (dtuser != null && dtuser.LastLogon.HasValue)
                {
                    dtuser.Permissions = new List<int>();
                    List<Int32> groups = m_ubiz.GetGroups(dtuser.ID);
                    foreach (int group in groups)
                        dtuser.Permissions.AddRange(m_gbiz.GetPermissions(group));

                    dcusr = new DCUser2();
                    GMReflectionUtils.Copy(dtuser, dcusr);
                    SetCache(sessionid, dcusr);
                }
            }
            catch (Exception exp)
            {
                throw exp;
            }
            finally { m_ubiz.Dispose(); m_gbiz.Dispose(); }
            return dcusr;
        }

        public bool ValidateToken(string sessionid)
        {
            return (GetCache(sessionid) != null);
        }

        public void ClearCache(string sessionid)
        {
            CacheMgr.Clear(CryptoUtils.DecryptTripleDES(sessionid));
        }
        #endregion
    }
}
