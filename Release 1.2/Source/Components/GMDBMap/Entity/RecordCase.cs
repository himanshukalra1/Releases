namespace GMDBMap.Entity
{
	using System;

	public class RecordCaseMap : Base.IBaseMap
	{
		#region Procedure
		public const string ProcedureGet = "Get_Record_Case";
		public const string ProcedureSave = "Save_Record_Case";
		public const string ProcedureDelete= "Delete_Record_Case";
		#endregion

		#region Members
		public const string ID = "ID";
		public const string RecordID = "RecordID";
		public const string CreatedDate = "CreatedDate";
		public const string ModifiedDate = "ModifiedDate";
		public const string NameFound = "NameFound";
		public const string DOBFound = "DOBFound";
		public const string Alias = "Alias";
		public const string CaseNumber = "CaseNumber";
		public const string ViolationDate = "ViolationDate";
		public const string FileDate = "FileDate";
		public const string DispoDate = "DispoDate";
		public const string ProbationType = "ProbationType";
		public const string FileFee = "FileFee";
		public const string Restitution = "Restitution";
		public const string Jail = "Jail";
		public const string JailCredit = "JailCredit";
		public const string SentencingDetail = "SentencingDetail";
		public const string DistrictCourt = "DistrictCourt";
		public const string CaseTypeLevel = "CaseTypeLevel";
		public const string CaseName = "CaseName";
		public const string Plaintiff = "Plaintiff";
		public const string Defendant = "Defendant";
		public const string StatusJudgment = "StatusJudgment";
		#endregion
	}
}
