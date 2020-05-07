namespace GMFacade.Base
{
    using System;
    using System.Data;

    using GMUtilities;
    using GMBiz.Options;
    using GMUtilities.Security;
    using GMUIDetail.Security;

    public abstract class Base:IDisposable
    {
        #region Members
        protected OptionsBiz m_optbiz = null; 
        #endregion

        #region Constructor
        public Base()
        {
            m_optbiz = new OptionsBiz();
        } 
        #endregion

        #region Methods
        public void SetCache(string sessionid, DCUser2 dcusr)
        {
            Guid gd = Guid.NewGuid();
            CacheMgr.Add<string>(CryptoUtils.DecryptTripleDES(sessionid), gd.ToString());
            CacheMgr.Add<DCUser2>(gd.ToString(), dcusr);
        }

        public DCUser2 GetCache(string sessionid)
        {
            return CacheMgr.Get<DCUser2>(CacheMgr.Get<string>(CryptoUtils.DecryptTripleDES(sessionid)));
        }

        public void AddDefaultOption(DataTable dt)
        {
            if (dt != null)
            {
                DataRow dr=dt.NewRow();
                dr[1] = "Any";
                dr[0] = "0";
                dt.Rows.InsertAt(dr, 0);
                dt.AcceptChanges();
            }
        }

        public bool HasID(int? ID)
        {
            return ID.HasValue && ID.Value > 0;
        }
        #endregion

        #region IDisposable Members

        public virtual void Dispose()
        {
            m_optbiz.Dispose();
        }

        #endregion
    }
}
