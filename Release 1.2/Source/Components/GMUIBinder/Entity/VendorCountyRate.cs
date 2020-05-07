namespace GMUIBinder.Entity
{
	using System;
	using System.Collections.Generic;
    using System.Web.UI.WebControls;

    using GMUtilities;
    using GMUIDetail.Entity;

    public class VendorCountyRateUB : Base.BaseUB
	{
		#region Members
		GMFacade.Entity.VendorCountyRate m_vf = null;
		#endregion

		#region Constructors
		public VendorCountyRateUB() : base() { m_vf = new GMFacade.Entity.VendorCountyRate(); }
		#endregion

		#region Methods
        public List<DCVendorCountyRate> Get(GridView gv)
        {
            List<DCVendorCountyRate> rv = new List<DCVendorCountyRate>();
            foreach (GridViewRow grv in gv.Rows) if (grv.Visible)
            {
                DCVendorCountyRate vcr = new DCVendorCountyRate(gv, grv);
                if (vcr.CountyID==0 || vcr.Rate == 0) continue;
                m_vf.Assign(vcr);
                rv.Add(vcr);
            }
            return rv;
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
        }
        #endregion
	}
}
