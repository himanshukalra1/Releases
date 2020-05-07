namespace GMDBDetail.Security
{
	using System;
	using System.Data;
	using GMDBMap.Base;
	using System.Collections.Generic;

	public class Group2PermissionDetail : Base.BaseDetail
	{
		#region Constructors
		public Group2PermissionDetail(): base(){}
		public Group2PermissionDetail(IDataReader reader, IBaseMap mapinstance) : base(reader, mapinstance) { }
		#endregion

		#region Members

		private int? m_groupid;
		public int? GroupID {get{ return m_groupid;} set{ m_groupid=value; }}

		private int? m_permissionid;
		public int? PermissionID {get{ return m_permissionid;} set{ m_permissionid=value; }}
		#endregion
	}
}
