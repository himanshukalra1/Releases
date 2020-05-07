namespace GMUIBinder.Entity
{
	using System;
	using System.Collections.Generic;

    using GMUtilities;
    using GMUIDetail.Entity;

    public class RecordHistoryUB : Base.BaseUB
	{
		#region Members
		GMFacade.Entity.RecordHistory m_rf = null;
		#endregion

		#region Constructors
		public RecordHistoryUB() : base() { m_rf = new GMFacade.Entity.RecordHistory(); }
		#endregion

		#region Methods
        public void Save(int recordid, int statusid, string sessionid)
        {
            m_rf.Save(recordid, statusid, sessionid);
        }
		#endregion

        #region Dispose
        public override void Dispose()
        {
            base.Dispose();
            m_rf.Dispose();
        }
        #endregion
	}

    public class RHReportUB : Base.BaseUB
    {
        #region Members
        GMFacade.Entity.RHReport m_rh = null;
        #endregion

        #region Constructors
        public RHReportUB() : base() { m_rh = new GMFacade.Entity.RHReport(); }
		#endregion

        #region Methods
        public DCRHReport Get(DCRHReport rhr)
        {
            m_rh.Get(rhr);
            GetHeaderToken(rhr);
            return rhr;
        }
        #endregion
    }
}
