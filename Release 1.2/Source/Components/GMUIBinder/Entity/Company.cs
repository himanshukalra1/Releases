namespace GMUIBinder.Entity
{
	using System;
	using System.Collections.Generic;
    using System.Web.UI.WebControls;

    using GMUtilities;
    using GMUIDetail.Entity;
    
    public class CompanyUB : Base.BaseUB
	{
		#region Members
        GMFacade.Entity.Company m_cf = null;
		#endregion

		#region Constructors
        public CompanyUB() : base() { m_cf = new GMFacade.Entity.Company(); }
		#endregion

		#region Methods
        public DCCompany Get(DCCompany dcvdr)
        {
            m_cf.Get(dcvdr);
            GetHeaderToken(dcvdr);
            return dcvdr;
        }

        public Companies Get(Companies es)
        {
            m_cf.Get(es);
            GetHeaderToken(es);
            return es;
        }

        public DCCompany Save(DCCompany dcvdr)
        {
            m_cf.Save(dcvdr);
            GetHeaderToken(dcvdr);
            return dcvdr;
        }

        public void Delete(Int32 ID)
        {
            m_cf.Delete(ID);
        } 
		#endregion

        #region Dispose
        public override void Dispose()
        {
            base.Dispose();
            m_cf.Dispose();
        }
        #endregion

	}
}
