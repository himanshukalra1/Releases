namespace GMDBMap.Security
{
	using System;

	public class User2Map : Base.IBaseMap
	{
		#region Procedure
		public const string ProcedureGet = "Get_User2";
		public const string ProcedureSave = "Save_User2";
		public const string ProcedureDelete= "Delete_User2";
		#endregion

		#region Members
		public const string ID = "ID";
		public const string Name = "Name";
		public const string FirstName = "FirstName";
		public const string LastName = "LastName";
		public const string Password = "Password";
		public const string Active = "Active";
		public const string Lock = "Lock";
		public const string ParentID = "ParentID";
		public const string TypeID = "TypeID";
		public const string ModifiedDate = "ModifiedDate";
		public const string ContactNo = "ContactNo";
		public const string Email = "Email";
		public const string LastLogon = "LastLogon";
		public const string ChangePassword = "ChangePassword";
		public const string PasswordChangeDate = "PasswordChangeDate";
		public const string LastPassword = "LastPassword";
		public const string DailyWages = "DailyWages";
		public const string DepartmentID = "DepartmentID";
        public const string Groups = "Groups";
		public const string ProcedureGetUserLogOn = "Get_User2_Logon";
		public const string ProcedureGetGroups = "Get_User2_Group";
		#endregion
	}
}
