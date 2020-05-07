namespace GMUIBinder.Security
{
    using System;
    
    using GMConstants;
    using GMUIDetail.Security;
    
    public class SystemUB:Base.BaseUB
    {
        #region Member
        GMFacade.Security.System2 m_sf = null;
        #endregion

        #region Constructor
        public SystemUB() : base() { m_sf = new GMFacade.Security.System2(); } 
        #endregion

        #region Methods
        public DCSystem Get(DCSystem dcsys)
        {
            m_sf.Get(dcsys);
            GetHeaderToken(dcsys);
            return dcsys;
        }

        public DCSystem Save(DCSystem dcsys)
        {
            m_sf.Save(dcsys);
            GetHeaderToken(dcsys);
            return dcsys;
        } 
        #endregion

        #region Dispose
        public override void Dispose()
        {
            base.Dispose();
            m_sf.Dispose();
        }
        #endregion
    }
}
