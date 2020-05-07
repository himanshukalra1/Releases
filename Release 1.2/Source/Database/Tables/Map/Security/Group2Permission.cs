namespace GMDBMap.Security
{
	using System;

	public class Group2PermissionMap : Base.IBaseMap
	{
		#region Procedure
		public const string ProcedureGet = "Get_Group2_Permission";
		public const string ProcedureSave = "Save_Group2_Permission";
		public const string ProcedureDelete= "Delete_Group2_Permission";
		#endregion

		#region Members
		public const string ID = "ID";
		public const string GroupID = "GroupID";
		public const string PermissionID = "PermissionID";
		#endregion
	}
}
