namespace GMDBMap.Entity
{
	using System;

	public class BatchMap : Base.IBaseMap
	{
		#region Procedure
		public const string ProcedureGet = "Get_Batch";
		public const string ProcedureSave = "Save_Batch";
		public const string ProcedureDelete= "Delete_Batch";
		#endregion

		#region Members
		public const string ID = "ID";
		public const string Name = "Name";
		public const string UserID = "UserID";
		public const string CreatedDate = "CreatedDate";
		public const string CompanyID = "CompanyID";
		public const string TotalCount = "TotalCount";
		public const string PassCount = "PassCount";
		public const string FailCount = "FailCount";
		#endregion
	}
}
