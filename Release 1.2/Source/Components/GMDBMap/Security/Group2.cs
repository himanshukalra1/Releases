namespace GMDBMap.Security
{
	using System;

	public class Group2Map : Base.IBaseMap
	{
		#region Procedure
		public const string ProcedureGet = "Get_Group2";
		public const string ProcedureSave = "Save_Group2";
		public const string ProcedureDelete= "Delete_Group2";
		#endregion

		#region Members
		public const string ID = "ID";
		public const string Name = "Name";
		public const string Description = "Description";
        public const string Permissions = "Permissions";

		public const string ProcedureGetPermissions = "Get_Group2_Permission";
		#endregion
	}
}
