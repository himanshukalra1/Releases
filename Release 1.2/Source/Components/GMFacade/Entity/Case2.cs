namespace GMFacade.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;

    using GMUtilities;
    using GMBiz.Entity;
    using GMUIDetail.Entity;
    using GMDBDetail.Entity;

    public class Case2 : Base.Base
	{
		#region Members
		Case2Biz m_biz = null;
        DataTable m_dtlevel = null, m_dtplea = null, m_dtdisposition = null;
		#endregion

		#region Constructors
		public Case2() : base() { m_biz = new Case2Biz(); 
            m_dtlevel = m_optbiz.GetLevelTypes();
            m_dtplea = m_optbiz.GetPleaTypes();
            m_dtdisposition = m_optbiz.GetDispositionTypes();
        }
		#endregion

		#region Methods
        public List<DCCase2> Get(int ID)
        {
            List<DCCase2> rv = new List<DCCase2>();
            DataTable dt = m_biz.GetByCaseID(ID);
            foreach (DataRow dr in dt.Rows)
            {
                DCCase2 c = new DCCase2(dr);
                Assign(c);
                rv.Add(c);
            }
            return rv;
        }

        public void Assign(DCCase2 c)
        {
            c.DSDispositionTypeID = m_dtdisposition;
            c.DSLevelTypeID = m_dtlevel;
            c.DSPleaTypeID = m_dtplea;
        }

        public void Save(DCCase2 dcc)
        {
            try
            {
                Case2Detail detcd = HasID(dcc.ID)? m_biz.Get(dcc.ID): new Case2Detail();
                GMUtilities.GMReflectionUtils.Copy(dcc, detcd);
                m_biz.Save(detcd);
            }
            catch (Exception exp)
            { throw exp; }
            finally { }
        }

        public void Delete(int? ID)
        {
            m_biz.Delete(ID);
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
