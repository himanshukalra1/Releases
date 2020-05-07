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

    public class System2:Base.Base
    {
        #region Member
        SystemBiz m_biz = null;
        #endregion

        #region Constructor
        public System2():base()
        {
            m_biz = new SystemBiz();
        } 
        #endregion

        #region Security
        public void Get(DCSystem dcsys)
        {
            try { GMUtilities.GMReflectionUtils.Copy(m_biz.Get(dcsys.ID), dcsys); }
            catch (Exception exp) { throw exp; }
            finally { }
        }

        public void Save(DCSystem dcsys)
        {
            try
            {
                SystemDetail detsys = new SystemDetail();
                GMUtilities.GMReflectionUtils.Copy(dcsys, detsys);
                m_biz.Save(detsys);
            }
            catch (Exception exp)
            { throw exp; }
            finally {}
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
