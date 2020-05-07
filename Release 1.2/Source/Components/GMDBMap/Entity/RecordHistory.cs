namespace GMDBMap.Entity
{
	using System;

	public class RecordHistoryMap : Base.IBaseMap
	{
		#region Procedure
		public const string ProcedureGet = "Get_Record_History";
		public const string ProcedureSave = "Save_Record_History";
		public const string ProcedureDelete= "Delete_Record_History";
		#endregion

		#region Members
		public const string ID = "ID";
		public const string RecordID = "RecordID";
		public const string CreatedDate = "CreatedDate";
		public const string RecordStatusID = "RecordStatusID";
		public const string UserID = "UserID";
		#endregion
	}
}
