namespace GMUIBinder.Security
{
    using System;

    using GMConstants;
    using GMUIDetail.Base;
    using GMUtilities.Security;
    using GMUIDetail.Security;

    public class UserUB:Base.BaseUB
    {
        #region Member
        GMFacade.Security.User m_uf = null;
        #endregion

        #region Constructor
        public UserUB() : base() { m_uf = new GMFacade.Security.User(); } 
        #endregion

        #region Methods
        public DCUser2 Get(DCUser2 dcusr)
        {
            m_uf.Get(dcusr);
            GetHeaderToken(dcusr);
            return dcusr;
        }

        public Users Get(Users es)
        {
            m_uf.Get(es);
            GetHeaderToken(es);
            return es;
        }

        public DCUser2 Save(DCUser2 dcusr)
        {
            m_uf.Save(dcusr);
            GetHeaderToken(dcusr);
            return dcusr;
        }

        public void Delete(Int32 ID)
        {
            m_uf.Delete(ID);
        }

        public BaseDC ChangePassword(DCChangePassword cp)
        {
            if (string.Compare(cp.NewPassword, cp.ConfirmNewPassword, true) != 0) throw new ApplicationException(ErrorConstants.Passwordmatch);
            BaseDC bdc = null;
            m_uf.ChangePassword(CryptoUtils.EncryptTripleDES(cp.SessionID), CryptoUtils.EncryptTripleDES(cp.ID.ToString()), CryptoUtils.EncryptTripleDES(cp.Password), CryptoUtils.EncryptTripleDES(cp.NewPassword));
            bdc = GetHeaderToken((bdc = cp));
            return bdc;
        } 
        #endregion

        #region Dispose
        public override void Dispose()
        {
            base.Dispose();
            m_uf.Dispose();
        }
        #endregion
    }
}
