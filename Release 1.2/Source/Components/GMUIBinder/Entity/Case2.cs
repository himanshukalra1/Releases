namespace GMUIBinder.Entity
{
    using System;
    using System.Collections.Generic;
    using System.Web.UI.WebControls;

    using GMUtilities;
    using GMUIDetail.Entity;

    public class Case2UB : Base.BaseUB
	{
		#region Members
        GMFacade.Entity.Case2 m_cf = null;
		#endregion

		#region Constructors
		public Case2UB() : base() { m_cf = new GMFacade.Entity.Case2(); }
		#endregion

		#region Methods
        public DCCase2 Get()
        {
            DCCase2 rv = new DCCase2();
            m_cf.Assign(rv);
            GetHeaderToken(rv);
            return rv;
        }

        public List<DCCase2> Get(GridView gv)
        {
            List<DCCase2> rv = new List<DCCase2>();
            foreach (GridViewRow grv in gv.Rows)
            {
                if (grv.Visible)
                {
                    DCCase2 vcr = new DCCase2(gv, grv);
                    if (string.IsNullOrEmpty(vcr.Description)) continue;
                    m_cf.Assign(vcr);
                    rv.Add(vcr);
                }
            }
            return rv;
        }

        public void Delete(int? ID)
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
