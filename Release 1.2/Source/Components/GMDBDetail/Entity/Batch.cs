namespace GMDBDetail.Entity
{
	using System;
	using System.Data;
	using GMDBMap.Base;
	using System.Collections.Generic;

	public class BatchDetail : Base.BaseDetail
	{
		#region Constructors
		public BatchDetail(): base(){}
		public BatchDetail(IDataReader reader, IBaseMap mapinstance) : base(reader, mapinstance) { }
		#endregion

		#region Members

		private string m_name;
		public string Name {get{ return m_name;} set{ m_name=value; }}

		private int? m_userid;
		public int? UserID {get{ return m_userid;} set{ m_userid=value; }}

		private DateTime? m_createddate;
		public DateTime? CreatedDate {get{ return m_createddate;} set{ m_createddate=value; }}

		private int? m_companyid;
		public int? CompanyID {get{ return m_companyid;} set{ m_companyid=value; }}

		private int? m_totalcount;
		public int? TotalCount {get{ return m_totalcount;} set{ m_totalcount=value; }}

		private int? m_passcount;
		public int? PassCount {get{ return m_passcount;} set{ m_passcount=value; }}

		private int? m_failcount;
		public int? FailCount {get{ return m_failcount;} set{ m_failcount=value; }}
		#endregion
	}
}
