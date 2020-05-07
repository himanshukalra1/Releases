namespace GMUIBinder.Security
{
    using System;

    using GMConstants;
    using GMUIDetail.Security;
    
    public class GroupUB:Base.BaseUB
    {
        #region Member
        GMFacade.Security.Group m_gf = null;
        #endregion

        #region Constructor
        public GroupUB() : base() { m_gf = new GMFacade.Security.Group(); } 
        #endregion

        #region Methods
        public DCGroup2 Get(DCGroup2 dcgrp)
        {
            m_gf.Get(dcgrp);
            GetHeaderToken(dcgrp);
            return dcgrp;
        }

        public Groups Get(Groups es)
        {
            m_gf.Get(es);
            GetHeaderToken(es);
            return es;
        }

        public DCGroup2 Save(DCGroup2 dcgrp)
        {
            m_gf.Save(dcgrp);
            GetHeaderToken(dcgrp);
            return dcgrp;
        }

        public void Delete(Int32 ID)
        {
            m_gf.Delete(ID);
        } 
        #endregion

        #region Dispose
        public override void Dispose()
        {
            base.Dispose();
            m_gf.Dispose();
        }
        #endregion
    }
}
