namespace GMDBDetail.Security
{
	using System;
	using System.Data;
	using GMDBMap.Base;
	using System.Collections.Generic;

	public class User2Group2Detail : Base.BaseDetail
	{
		#region Constructors
		public User2Group2Detail(): base(){}
		public User2Group2Detail(IDataReader reader, IBaseMap mapinstance) : base(reader, mapinstance) { }
		#endregion

		#region Members

		private int? m_userid;
		public int? UserID {get{ return m_userid;} set{ m_userid=value; }}

		private int? m_groupid;
		public int? GroupID {get{ return m_groupid;} set{ m_groupid=value; }}
		#endregion
	}
}
