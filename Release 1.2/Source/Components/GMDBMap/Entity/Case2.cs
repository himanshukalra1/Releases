namespace GMDBMap.Entity
{
	using System;

	public class Case2Map : Base.IBaseMap
	{
		#region Procedure
		public const string ProcedureGet = "Get_Case2";
		public const string ProcedureSave = "Save_Case2";
		public const string ProcedureDelete= "Delete_Case2";
		#endregion

		#region Members
		public const string ID = "ID";
		public const string CaseID = "CaseID";
		public const string CreatedDate = "CreatedDate";
		public const string ModifiedDate = "ModifiedDate";
		public const string Description = "Description";
		public const string LevelTypeID = "LevelTypeID";
		public const string PleaTypeID = "PleaTypeID";
		public const string DispositionTypeID = "DispositionTypeID";
		#endregion
	}
}
