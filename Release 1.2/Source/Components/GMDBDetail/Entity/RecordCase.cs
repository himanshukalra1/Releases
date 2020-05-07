namespace GMDBDetail.Entity
{
	using System;
	using System.Data;
	using GMDBMap.Base;
	using System.Collections.Generic;

	public class RecordCaseDetail : Base.BaseDetail
	{
		#region Constructors
		public RecordCaseDetail(): base(){}
		public RecordCaseDetail(IDataReader reader, IBaseMap mapinstance) : base(reader, mapinstance) { }
		#endregion

		#region Members

		private int? m_recordid;
		public int? RecordID {get{ return m_recordid;} set{ m_recordid=value; }}

		private DateTime? m_createddate;
		public DateTime? CreatedDate {get{ return m_createddate;} set{ m_createddate=value; }}

		private DateTime? m_modifieddate;
		public DateTime? ModifiedDate {get{ return m_modifieddate;} set{ m_modifieddate=value; }}

		private string m_namefound;
		public string NameFound {get{ return m_namefound;} set{ m_namefound=value; }}

		private DateTime? m_dobfound;
		public DateTime? DOBFound {get{ return m_dobfound;} set{ m_dobfound=value; }}

		private string m_alias;
		public string Alias {get{ return m_alias;} set{ m_alias=value; }}

		private string m_casenumber;
		public string CaseNumber {get{ return m_casenumber;} set{ m_casenumber=value; }}

		private DateTime? m_violationdate;
		public DateTime? ViolationDate {get{ return m_violationdate;} set{ m_violationdate=value; }}

		private DateTime? m_filedate;
		public DateTime? FileDate {get{ return m_filedate;} set{ m_filedate=value; }}

		private DateTime? m_dispodate;
		public DateTime? DispoDate {get{ return m_dispodate;} set{ m_dispodate=value; }}

		private string m_probationtype;
		public string ProbationType {get{ return m_probationtype;} set{ m_probationtype=value; }}

		private decimal? m_filefee;
		public decimal? FileFee {get{ return m_filefee;} set{ m_filefee=value; }}

		private string m_restitution;
		public string Restitution {get{ return m_restitution;} set{ m_restitution=value; }}

		private string m_jail;
		public string Jail {get{ return m_jail;} set{ m_jail=value; }}

		private string m_jailcredit;
		public string JailCredit {get{ return m_jailcredit;} set{ m_jailcredit=value; }}

		private string m_sentencingdetail;
		public string SentencingDetail {get{ return m_sentencingdetail;} set{ m_sentencingdetail=value; }}

		private string m_districtcourt;
		public string DistrictCourt {get{ return m_districtcourt;} set{ m_districtcourt=value; }}

		private string m_casetypelevel;
		public string CaseTypeLevel {get{ return m_casetypelevel;} set{ m_casetypelevel=value; }}

		private string m_casename;
		public string CaseName {get{ return m_casename;} set{ m_casename=value; }}

		private string m_plaintiff;
		public string Plaintiff {get{ return m_plaintiff;} set{ m_plaintiff=value; }}

		private string m_defendant;
		public string Defendant {get{ return m_defendant;} set{ m_defendant=value; }}

		private string m_statusjudgment;
		public string StatusJudgment {get{ return m_statusjudgment;} set{ m_statusjudgment=value; }}
		#endregion
	}
}
