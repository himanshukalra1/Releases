namespace GMDBMap.Entity
{
	using System;

	public class BatchMap : Base.IBaseMap
	{
		#region Procedure
		public const string ProcedureGet = "Get_Batch";
		public const string ProcedureSave = "Save_Batch";
		public const string ProcedureDelete= "Delete_Batch";
        public const string ProcedureGetBatchPipeline = "Get_BatchPipeline  ";
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


        public const string PageNumber = "PageNumber ";
        public const string NumOfRows = "NumOfRows";
        public const string SortField = "SortField";
        public const string SearchData = "SearchData";
	}
}
