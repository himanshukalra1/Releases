namespace GMFacade.Security
{
    using System;
    using System.Data;
    using System.Collections.Generic;

    using GMUtilities;
    using GMConstants;    
    using GMBiz.Options;
    using GMBiz.Security;
    using GMUIDetail.Entity;
    using GMUtilities.Security;
    using GMDBDetail.Security;
    using GMUIDetail.Security;

    public class User:Base.Base
    {
        #region Members
        UserBiz m_biz = null;
        #endregion

        #region Constructor
        public User()
        {
            m_biz = new UserBiz();
        } 
        #endregion

        #region Security
        public void Get(Users es)
        {
            try { es.DSMembers = m_biz.Get(); }
            catch (Exception exp) { throw exp; }
            finally { }
        }

        public void Get(DCUser2 dcusr)
        {
            GroupBiz gbiz = new GroupBiz();
            try
            {
                GMUtilities.GMReflectionUtils.Copy(m_biz.Get(dcusr.ID), dcusr);
                dcusr.DSUNSelected = gbiz.Get();
                dcusr.DSTypeID = m_optbiz.GetEmployeeTypes(GetCache(dcusr.SessionID).ID);
                dcusr.DSDepartmentID= m_optbiz.GetDeparmentTypes();
                if (dcusr.ID.HasValue)
                    dcusr.DSSelected = GMUtilities.DataUtils.DetachSelection(dcusr.DSUNSelected, m_biz.GetGroups(dcusr.ID));
            }
            catch (Exception exp) { throw exp; }
            finally {gbiz.Dispose(); }
        }

        public void Save(DCUser2 dcusr)
        {
            try
            {
                User2Detail detusr = new User2Detail();
                GMUtilities.GMReflectionUtils.Copy(dcusr, detusr);
                Save(detusr,(bool) dcusr.IsPasswordChangedManual);
                if ((bool)dcusr.IsPasswordChangedManual)
                {
                    dcusr = GetCache(dcusr.SessionID);
                    dcusr.Password = CryptoUtils.EncryptSHA(dcusr.Password);
                    SetCache(dcusr.SessionID, dcusr);
                }
            }
            catch (Exception exp)
            { throw exp; }
        }
                
        public void ChangePassword(string sessionid, string userid, string oldpwd, string newpwd)
        {
            DCUser2 dcusr = GetCache(sessionid);
            if (string.Compare(dcusr.Password, CryptoUtils.EncryptSHA(oldpwd), true) != 0)
                throw new ApplicationException(ErrorConstants.ExistingPassword);
            User2Detail detusr = new User2Detail();
            detusr.ID = (Int32?)GMConvert.GetInt32(userid);
            detusr.Password = CryptoUtils.EncryptSHA(newpwd);
            detusr.LastPassword = CryptoUtils.EncryptSHA(oldpwd);
            detusr.PasswordChangeDate = DateTime.Now;
            detusr.IsChangePasssword = false;
            detusr.ModifiedDate = DateTime.Now;
            Save(detusr);
            dcusr.Password = CryptoUtils.EncryptSHA(newpwd);
            dcusr.IsChangePasssword= false;
        }

        public void Delete(int ID)
        {
            try { m_biz.Delete(ID); }
            catch (Exception exp)
            { throw exp; }
            finally {}
        }
        #endregion

        #region Private Methods
        private void Save(User2Detail detusr)
        {
            Save(detusr, false);
        }

        private void Save(User2Detail detusr, bool ispwdchangemanual)
        {
            m_biz.Save(detusr,ispwdchangemanual);
        }
        #endregion

        #region Dispose
        public override void Dispose()
        {
            base.Dispose();
            m_biz.Dispose();
        }
        #endregion
    }
}
