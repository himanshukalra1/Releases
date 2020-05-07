namespace GMFacade.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;

    using GMUtilities;
    using GMBiz.Entity;
    using GMUIDetail.Entity;
    using GMDBDetail.Entity;

    public class Vendor : Base.Base
	{
		#region Members
		VendorBiz m_biz = null;
        VendorCountyRate m_crf = null;
		#endregion

		#region Constructors
        public Vendor() : base() { m_biz = new VendorBiz(); m_crf = new VendorCountyRate(); }
		#endregion

		#region Methods
        public void Get(Vendors es)
        {
            try { es.DSMembers = m_biz.Get(); }
            catch (Exception exp) { throw exp; }
            finally { }
        }

        public void Get(DCVendor dcvdr)
        {
            try
            {
                GMUtilities.GMReflectionUtils.Copy(m_biz.Get(dcvdr.ID), dcvdr);
                dcvdr.DSStateID = m_optbiz.GetStates();
                dcvdr.DSPaymentID= m_optbiz.GetPaymentTypes();
                if(dcvdr.ID.HasValue) dcvdr.CountyRate = m_crf.Get(dcvdr.ID.Value);
            }
            catch (Exception exp) { throw exp; }
            finally { }
        }

        public void Save(DCVendor dcvdr)
        {
            try
            {
                VendorDetail detvdr = new VendorDetail();
                GMUtilities.GMReflectionUtils.Copy(dcvdr, detvdr);
                m_biz.Save(detvdr);
                foreach (DCVendorCountyRate vcr in dcvdr.CountyRate)
                {
                    vcr.VendorID = detvdr.ID;
                    m_crf.Save(vcr);
                }
                dcvdr.ID = detvdr.ID;
            }
            catch (Exception exp)
            { throw exp; }
            finally { }
        }

        public void Delete(int ID)
        {
            try {
                foreach (DCVendorCountyRate vcr in m_crf.Get(ID))
                    m_crf.Delete(vcr.ID.Value);
                m_biz.Delete(ID); 
            }
            catch (Exception exp)
            { throw exp; }
            finally { }
        }
		#endregion

        #region Dispose
        public override void Dispose()
        {
            base.Dispose();
            m_biz.Dispose();
            m_crf.Dispose();
        }
        #endregion
	}
}
