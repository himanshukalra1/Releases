namespace GMDBMap.Security
{
	using System;

	public class User2Group2Map : Base.IBaseMap
	{
		#region Procedure
		public const string ProcedureGet = "Get_User2_Group2";
		public const string ProcedureSave = "Save_User2_Group2";
		public const string ProcedureDelete= "Delete_User2_Group2";
		#endregion

		#region Members
		public const string ID = "ID";
		public const string UserID = "UserID";
		public const string GroupID = "GroupID";
		#endregion
	}
}
