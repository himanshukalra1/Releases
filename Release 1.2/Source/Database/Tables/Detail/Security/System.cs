namespace GMDBDetail.Security
{
	using System;
	using System.Data;
	using GMDBMap.Base;
	using System.Collections.Generic;

	public class SystemDetail : Base.BaseDetail
	{
		#region Constructors
		public SystemDetail(): base(){}
		public SystemDetail(IDataReader reader, IBaseMap mapinstance) : base(reader, mapinstance) { }
		#endregion

		#region Members

		private int? m_maxpasswordattempt;
		public int? MaxPasswordAttempt {get{ return m_maxpasswordattempt;} set{ m_maxpasswordattempt=value; }}

		private int? m_maxpassworddays;
		public int? MaxPasswordDays {get{ return m_maxpassworddays;} set{ m_maxpassworddays=value; }}
		#endregion
	}
}
