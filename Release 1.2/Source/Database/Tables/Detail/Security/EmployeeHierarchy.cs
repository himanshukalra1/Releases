namespace GMDBDetail.Security
{
	using System;
	using System.Data;
	using GMDBMap.Base;
	using System.Collections.Generic;

	public class EmployeeHierarchyDetail : Base.BaseDetail
	{
		#region Constructors
		public EmployeeHierarchyDetail(): base(){}
		public EmployeeHierarchyDetail(IDataReader reader, IBaseMap mapinstance) : base(reader, mapinstance) { }
		#endregion

		#region Members

		private int? m_sourceid;
		public int? SourceID {get{ return m_sourceid;} set{ m_sourceid=value; }}

		private int? m_targetid;
		public int? TargetID {get{ return m_targetid;} set{ m_targetid=value; }}
		#endregion
	}
}
