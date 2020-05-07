namespace GMFacade.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;

    using GMUtilities;
    using GMBiz.Entity;
    using GMUIDetail.Entity;
    using GMDBDetail.Entity;

    public class RecordHistory : Base.Base
	{
		#region Members
		RecordHistoryBiz m_biz = null;
		#endregion

		#region Constructors
		public RecordHistory() : base() { m_biz = new RecordHistoryBiz(); }
		#endregion

		#region Methods
        public List<DCRecordHistory> Get(int? ID)
        {
            DataTable dt = m_biz.GetByRecordID(ID);
            List<DCRecordHistory> rv = new List<DCRecordHistory>();
            if (dt != null)
            {
                DataRowCollection drc = dt.Rows;
                foreach (DataRow dr in drc) rv.Add(new DCRecordHistory(dr));
                dt.Dispose();
            }
            return rv;
        }

        public void Save(int recordid, int statusid, string sessionid)
        {
            m_biz.Save(new RecordHistoryDetail(recordid, statusid, GetCache(sessionid).ID.Value));
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

    public class RHReport : Base.Base
    {
        #region Constructors
        public RHReport() : base() {}
		#endregion

        #region Method
        public void Get(DCRHReport rhr)
        {
            rhr.DSRecordStatusID = m_optbiz.GetRecordStatusTypes();
        }
        #endregion
    }
}
