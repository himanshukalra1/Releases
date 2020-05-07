namespace GMDBMap.Security
{
	using System;

	public class SystemMap : Base.IBaseMap
	{
		#region Procedure
		public const string ProcedureGet = "Get_System";
		public const string ProcedureSave = "Save_System";
		#endregion

		#region Members
		public const string ID = "ID";
		public const string MaxPasswordAttempt = "MaxPasswordAttempt";
		public const string MaxPasswordDays = "MaxPasswordDays";
		#endregion
	}
}
