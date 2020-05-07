namespace GMUIDetail.Entity
{
	using System;
	using System.Data;
	using System.ServiceModel;
	using System.Collections.Generic;
	using System.Runtime.Serialization;

	[DataContract]
	[SerializableAttribute()]
	[GMUtilities.ClassAttrib.Handler(GMConstants.UIBinderHandlerConstants.RecordCaseUB)]
	public class DCRecordCase : Base.BaseDC
	{
		#region Members

		private int? m_recordid;
		[DataMember]
		public int? RecordID {get{ return m_recordid;} set{ m_recordid=value; }}

		private DateTime? m_createddate;
		[DataMember]
		public DateTime? CreatedDate {get{ return m_createddate;} set{ m_createddate=value; }}

		private DateTime? m_modifieddate;
		[DataMember]
		public DateTime? ModifiedDate {get{ return m_modifieddate;} set{ m_modifieddate=value; }}

		private string m_namefound;
		[DataMember]
		public string NameFound {get{ return m_namefound;} set{ m_namefound=value; }}

		private DateTime? m_dobfound;
		[DataMember]
		public DateTime? DOBFound {get{ return m_dobfound;} set{ m_dobfound=value; }}

		private string m_alias;
		[DataMember]
		public string Alias {get{ return m_alias;} set{ m_alias=value; }}

		private string m_casenumber;
		[DataMember]
		public string CaseNumber {get{ return m_casenumber;} set{ m_casenumber=value; }}

		private DateTime? m_violationdate;
		[DataMember]
		public DateTime? ViolationDate {get{ return m_violationdate;} set{ m_violationdate=value; }}

		private DateTime? m_filedate;
		[DataMember]
		public DateTime? FileDate {get{ return m_filedate;} set{ m_filedate=value; }}

		private DateTime? m_dispodate;
		[DataMember]
		public DateTime? DispoDate {get{ return m_dispodate;} set{ m_dispodate=value; }}

		private string m_probationtype;
		[DataMember]
		public string ProbationType {get{ return m_probationtype;} set{ m_probationtype=value; }}

		private decimal? m_filefee;
		[DataMember]
		public decimal? FileFee {get{ return m_filefee;} set{ m_filefee=value; }}

		private string m_restitution;
		[DataMember]
		public string Restitution {get{ return m_restitution;} set{ m_restitution=value; }}

		private string m_jail;
		[DataMember]
		public string Jail {get{ return m_jail;} set{ m_jail=value; }}

		private string m_jailcredit;
		[DataMember]
		public string JailCredit {get{ return m_jailcredit;} set{ m_jailcredit=value; }}

		private string m_sentencingdetail;
		[DataMember]
		public string SentencingDetail {get{ return m_sentencingdetail;} set{ m_sentencingdetail=value; }}

		private List<DCCase2> m_caserecord;
		[DataMember]
		public List<DCCase2> CaseRecord {get{ return m_caserecord;} set{ m_caserecord=value; }}

		private string m_customerrefno;
		[DataMember]
		public string CustomerRefNo {get{ return m_customerrefno;} set{ m_customerrefno=value; }}

		private string m_county;
		[DataMember]
		public string County {get{ return m_county;} set{ m_county=value; }}

		private string m_name;
		[DataMember]
		public string Name {get{ return m_name;} set{ m_name=value; }}

		private string m_actualcasetype;
		[DataMember]
		public string ActualCaseType {get{ return m_actualcasetype;} set{ m_actualcasetype=value; }}

		private Boolean? m_iscivil;
		[DataMember]
		public Boolean? IsCivil {get{ return m_iscivil;} set{ m_iscivil=value; }}

		private string m_districtcourt;
		[DataMember]
		public string DistrictCourt {get{ return m_districtcourt;} set{ m_districtcourt=value; }}

		private string m_casetypelevel;
		[DataMember]
		public string CaseTypeLevel {get{ return m_casetypelevel;} set{ m_casetypelevel=value; }}

		private string m_casename;
		[DataMember]
		public string CaseName {get{ return m_casename;} set{ m_casename=value; }}

		private string m_plaintiff;
		[DataMember]
		public string Plaintiff {get{ return m_plaintiff;} set{ m_plaintiff=value; }}

		private string m_defendant;
		[DataMember]
		public string Defendant {get{ return m_defendant;} set{ m_defendant=value; }}

		private string m_statusjudgment;
		[DataMember]
		public string StatusJudgment {get{ return m_statusjudgment;} set{ m_statusjudgment=value; }}
		#endregion
	}
}
