namespace GMDBMap.Security
{
	using System;

	public class EmployeeHierarchyMap : Base.IBaseMap
	{
		#region Procedure
		public const string ProcedureGet = "Get_Employee_Hierarchy";
		#endregion

		#region Members
		public const string ID = "ID";
		public const string SourceID = "SourceID";
		public const string TargetID = "TargetID";
		#endregion
	}
}
