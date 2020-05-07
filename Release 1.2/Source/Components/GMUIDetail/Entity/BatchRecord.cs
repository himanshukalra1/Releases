namespace GMUIDetail.Entity
{
	using System;
	using System.Data;
	using System.ServiceModel;
	using System.Collections.Generic;
	using System.Runtime.Serialization;

	[DataContract]
	[SerializableAttribute()]
	[GMUtilities.ClassAttrib.Handler(GMConstants.UIBinderHandlerConstants.BatchRecordUB)]
	public partial class DCBatchRecord : Base.BaseDC
	{
		#region Members

		private int? m_batchid;
		[DataMember]
		public int? BatchID {get{ return m_batchid;} set{ m_batchid=value; }}

		private DateTime? m_createddate;
		[DataMember]
		public DateTime? CreatedDate {get{ return m_createddate;} set{ m_createddate=value; }}

		private DateTime? m_modifieddate;
		[DataMember]
		public DateTime? ModifiedDate {get{ return m_modifieddate;} set{ m_modifieddate=value; }}

		private int? m_companyid;
		[DataMember]
		public int? CompanyID {get{ return m_companyid;} set{ m_companyid=value; }}

		private int? m_recordstatusid;
		[DataMember]
		public int? RecordStatusID {get{ return m_recordstatusid;} set{ m_recordstatusid=value; }}

		private DateTime? m_receiveddate;
		[DataMember]
		public DateTime? ReceivedDate {get{ return m_receiveddate;} set{ m_receiveddate=value; }}

		private DateTime? m_sentdate;
		[DataMember]
		public DateTime? SentDate {get{ return m_sentdate;} set{ m_sentdate=value; }}

		private decimal? m_printcost;
		[DataMember]
		public decimal? PrintCost {get{ return m_printcost;} set{ m_printcost=value; }}

		private int? m_noofpages;
		[DataMember]
		public int? NoOfPages {get{ return m_noofpages;} set{ m_noofpages=value; }}

		private decimal? m_courtfee;
		[DataMember]
		public decimal? CourtFee {get{ return m_courtfee;} set{ m_courtfee=value; }}

		private string m_customerrefno;
		[DataMember]
		public string CustomerRefNo {get{ return m_customerrefno;} set{ m_customerrefno=value; }}

		private int? m_leadno;
		[DataMember]
		public int? LeadNo {get{ return m_leadno;} set{ m_leadno=value; }}

        private int? m_countyid;
        [DataMember]
        public int? CountyID { get { return m_countyid; } set { m_countyid = value; } }

		private string m_name;
		[DataMember]
		public string Name {get{ return m_name;} set{ m_name=value; }}

		private DateTime? m_dob;
		[DataMember]
		public DateTime? DOB {get{ return m_dob;} set{ m_dob=value; }}

		private string m_actualcasetype;
		[DataMember]
		public string ActualCaseType {get{ return m_actualcasetype;} set{ m_actualcasetype=value; }}

		private int? m_casetypeid;
		[DataMember]
		public int? CaseTypeID {get{ return m_casetypeid;} set{ m_casetypeid=value; }}

		private int? m_years;
		[DataMember]
		public int? Years {get{ return m_years;} set{ m_years=value; }}

		private string m_ssn;
		[DataMember]
		public string SSN {get{ return m_ssn;} set{ m_ssn=value; }}

		private int? m_actionid;
		[DataMember]
		public int? ActionID {get{ return m_actionid;} set{ m_actionid=value; }}

		private int? m_vendorid;
		[DataMember]
		public int? VendorID {get{ return m_vendorid;} set{ m_vendorid=value; }}

		private int? m_contacttypeid;
		[DataMember]
		public int? ContactTypeID {get{ return m_contacttypeid;} set{ m_contacttypeid=value; }}

		private string m_clientremarks;
		[DataMember]
		public string ClientRemarks {get{ return m_clientremarks;} set{ m_clientremarks=value; }}

		private string m_clientsplremarks;
		[DataMember]
		public string ClientSplRemarks {get{ return m_clientsplremarks;} set{ m_clientsplremarks=value; }}

		private string m_riscomments;
		[DataMember]
		public string RISComments {get{ return m_riscomments;} set{ m_riscomments=value; }}

		private Int32 m_currentresult;
		[DataMember]
		public Int32 CurrentResult {get{ return m_currentresult;} set{ m_currentresult=value; }}

		private Int32 m_dbresult;
		[DataMember]
		public Int32 DBResult {get{ return m_dbresult;} set{ m_dbresult=value; }}

        private DataTable m_dscompanyid;
        [DataMember]
        public DataTable DSCompanyID { get { return m_dscompanyid; } set { m_dscompanyid = value; } }

        private DataTable m_dsrecordstatusid;
        [DataMember]
        public DataTable DSRecordStatusID { get { return m_dsrecordstatusid; } set { m_dsrecordstatusid = value; } }

        private DataTable m_dscasetypeid;
        [DataMember]
        public DataTable DSCaseTypeID { get { return m_dscasetypeid; } set { m_dscasetypeid = value; } }

        private DataTable m_dsactionid;
        [DataMember]
        public DataTable DSActionID { get { return m_dsactionid; } set { m_dsactionid = value; } }

        private DataTable m_dsvendorid;
        [DataMember]
        public DataTable DSVendorID { get { return m_dsvendorid; } set { m_dsvendorid = value; } }

        private DataTable m_dscontacttypeid;
        [DataMember]
        public DataTable DSContactTypeID { get { return m_dscontacttypeid; } set { m_dscontacttypeid = value; } }

        private List<DCRecordHistory> m_history;
        [DataMember]
        public List<DCRecordHistory> History { get { return m_history; } set { m_history = value; } }

        private Boolean? m_iscivil;
        [DataMember]
        public Boolean? IsCivil { get { return m_iscivil; } set { m_iscivil = value; } }

        private DataTable m_dscountyid;
        [DataMember]
        public DataTable DSCountyID { get { return m_dscountyid; } set { m_dscountyid = value; } }
		#endregion
	}
}
