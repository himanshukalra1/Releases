namespace GMUIBinder.Entity
{
	using System;
    using System.Reflection;
	using System.Collections.Generic;
    using System.Web.UI.WebControls;

    using GMUtilities;
    using GMUIDetail.Entity;
   
    public class VendorUB : Base.BaseUB
	{
		#region Members
		GMFacade.Entity.Vendor m_vf = null;
        VendorCountyRateUB m_crbiz = null;
		#endregion

		#region Constructors
        public VendorUB() : base() { m_vf = new GMFacade.Entity.Vendor(); m_crbiz = new VendorCountyRateUB(); }
		#endregion

		#region Methods
        public DCVendor Get(DCVendor dcvdr)
        {
            m_vf.Get(dcvdr);
            GetHeaderToken(dcvdr);
            return dcvdr;
        }

        public Vendors Get(Vendors es)
        {
            m_vf.Get(es);
            GetHeaderToken(es);
            return es;
        }

        public DCVendor Save(DCVendor dcvdr)
        {
            dcvdr.CountyRate = m_crbiz.Get(((GridView)m_cpage.Get()));
            m_vf.Save(dcvdr);
            GetHeaderToken(dcvdr);
            return dcvdr;
        }

        public void Delete(Int32 ID)
        {
            m_vf.Delete(ID);
        } 
		#endregion

        #region Dispose
        public override void Dispose()
        {
            base.Dispose();
            m_vf.Dispose();
            m_crbiz.Dispose();
        }
        #endregion
	}
}
