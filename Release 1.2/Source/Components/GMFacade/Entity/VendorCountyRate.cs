namespace GMFacade.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;

    using GMUtilities;
    using GMBiz.Entity;
    using GMUIDetail.Entity;
    using GMDBDetail.Entity;

    public class VendorCountyRate : Base.Base
	{
		#region Members
		VendorCountyRateBiz m_biz = null;
        DataTable m_dtcounty = null;
		#endregion

		#region Constructors
		public VendorCountyRate() : base() { m_biz = new VendorCountyRateBiz();
        m_dtcounty = m_optbiz.GetCounties();
        }
		#endregion

		#region Methods
        public List<DCVendorCountyRate> Get(int ID)
        {
            List<DCVendorCountyRate> rv = new List<DCVendorCountyRate>();
            DataTable dt = m_biz.GetByVendor(ID);
            foreach (DataRow dr in dt.Rows)
            {
                DCVendorCountyRate vcr = new DCVendorCountyRate(dr);
                vcr.DSCountyID = m_dtcounty;
                rv.Add(vcr);
            }
            return rv;
        }

        public void Assign(DCVendorCountyRate dcvcr)
        {
            dcvcr.DSCountyID = m_dtcounty;
        }

        public void Save(DCVendorCountyRate dcvdr)
        {
            try
            {
                VendorCountyRateDetail detvdr = new VendorCountyRateDetail();
                GMUtilities.GMReflectionUtils.Copy(dcvdr, detvdr);
                m_biz.Save(detvdr);
            }
            catch (Exception exp)
            { throw exp; }
            finally { }
        }

        public void Delete(int ID)
        {
            try { m_biz.Delete(ID); }
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
        }
        #endregion

	}
}
