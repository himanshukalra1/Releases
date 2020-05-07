namespace GMDBDetail.Entity
{
	using System;
	using System.Data;
	using GMDBMap.Base;
	using System.Collections.Generic;

	public class BatchRecordDetail : Base.BaseDetail
	{
		#region Constructors
		public BatchRecordDetail(): base(){}
		public BatchRecordDetail(IDataReader reader, IBaseMap mapinstance) : base(reader, mapinstance) { }
		#endregion

		#region Members

		private int? m_batchid;
		public int? BatchID {get{ return m_batchid;} set{ m_batchid=value; }}

		private DateTime? m_createddate;
		public DateTime? CreatedDate {get{ return m_createddate;} set{ m_createddate=value; }}

		private DateTime? m_modifieddate;
		public DateTime? ModifiedDate {get{ return m_modifieddate;} set{ m_modifieddate=value; }}

		private int? m_companyid;
		public int? CompanyID {get{ return m_companyid;} set{ m_companyid=value; }}

		private int? m_recordstatusid;
		public int? RecordStatusID {get{ return m_recordstatusid;} set{ m_recordstatusid=value; }}

		private DateTime? m_receiveddate;
		public DateTime? ReceivedDate {get{ return m_receiveddate;} set{ m_receiveddate=value; }}

		private DateTime? m_sentdate;
		public DateTime? SentDate {get{ return m_sentdate;} set{ m_sentdate=value; }}

		private decimal? m_printcost;
		public decimal? PrintCost {get{ return m_printcost;} set{ m_printcost=value; }}

		private int? m_noofpages;
		public int? NoOfPages {get{ return m_noofpages;} set{ m_noofpages=value; }}

		private decimal? m_courtfee;
		public decimal? CourtFee {get{ return m_courtfee;} set{ m_courtfee=value; }}

		private string m_customerrefno;
		public string CustomerRefNo {get{ return m_customerrefno;} set{ m_customerrefno=value; }}

		private int? m_leadno;
		public int? LeadNo {get{ return m_leadno;} set{ m_leadno=value; }}

		private int? m_countyid;
		public int? CountyID {get{ return m_countyid;} set{ m_countyid=value; }}

		private string m_name;
		public string Name {get{ return m_name;} set{ m_name=value; }}

		private DateTime? m_dob;
		public DateTime? DOB {get{ return m_dob;} set{ m_dob=value; }}

		private string m_actualcasetype;
		public string ActualCaseType {get{ return m_actualcasetype;} set{ m_actualcasetype=value; }}

		private int? m_casetypeid;
		public int? CaseTypeID {get{ return m_casetypeid;} set{ m_casetypeid=value; }}

		private int? m_years;
		public int? Years {get{ return m_years;} set{ m_years=value; }}

		private string m_ssn;
		public string SSN {get{ return m_ssn;} set{ m_ssn=value; }}

		private int? m_actionid;
		public int? ActionID {get{ return m_actionid;} set{ m_actionid=value; }}

		private int? m_vendorid;
		public int? VendorID {get{ return m_vendorid;} set{ m_vendorid=value; }}

		private int? m_contacttypeid;
		public int? ContactTypeID {get{ return m_contacttypeid;} set{ m_contacttypeid=value; }}

		private string m_clientremarks;
		public string ClientRemarks {get{ return m_clientremarks;} set{ m_clientremarks=value; }}

		private string m_clientsplremarks;
		public string ClientSplRemarks {get{ return m_clientsplremarks;} set{ m_clientsplremarks=value; }}

		private string m_riscomments;
		public string RISComments {get{ return m_riscomments;} set{ m_riscomments=value; }}
		#endregion
	}
}
