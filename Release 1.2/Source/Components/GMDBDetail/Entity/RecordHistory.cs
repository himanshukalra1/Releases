namespace GMDBDetail.Entity
{
	using System;
	using System.Data;
	using GMDBMap.Base;
	using System.Collections.Generic;

	public class RecordHistoryDetail : Base.BaseDetail
	{
		#region Constructors
		public RecordHistoryDetail(): base(){}
		public RecordHistoryDetail(IDataReader reader, IBaseMap mapinstance) : base(reader, mapinstance) { }

        public RecordHistoryDetail(int recordid, int statusid, int userid)
        {
            CreatedDate = DateTime.Now;
            RecordID = recordid;
            RecordStatusID = statusid;
            UserID = userid;
        }
		#endregion

		#region Members

		private int? m_recordid;
		public int? RecordID {get{ return m_recordid;} set{ m_recordid=value; }}

		private DateTime? m_createddate;
		public DateTime? CreatedDate {get{ return m_createddate;} set{ m_createddate=value; }}

		private int? m_recordstatusid;
		public int? RecordStatusID {get{ return m_recordstatusid;} set{ m_recordstatusid=value; }}

		private int? m_userid;
		public int? UserID {get{ return m_userid;} set{ m_userid=value; }}
		#endregion
	}
}
