namespace GMUIDetail.Entity
{
	using System;
	using System.Data;
	using System.ServiceModel;
	using System.Collections.Generic;
	using System.Runtime.Serialization;

	[DataContract]
	[SerializableAttribute()]
	[GMUtilities.ClassAttrib.Handler(GMConstants.UIBinderHandlerConstants.BatchUB)]
	public class DCBatch : Base.BaseDC
	{
		#region Members

		private string m_name;
		[DataMember]
		public string Name {get{ return m_name;} set{ m_name=value; }}
        
		private DateTime? m_createddate;
		[DataMember]
		public DateTime? CreatedDate {get{ return m_createddate;} set{ m_createddate=value; }}

		private int? m_companyid;
		[DataMember]
		public int? CompanyID {get{ return m_companyid;} set{ m_companyid=value; }}

		private int? m_totalcount;
		[DataMember]
		public int? TotalCount {get{ return m_totalcount;} set{ m_totalcount=value; }}

		private int? m_passcount;
		[DataMember]
		public int? PassCount {get{ return m_passcount;} set{ m_passcount=value; }}

        private int? m_failcount;
        [DataMember]
        public int? FailCount { get { return m_failcount; } set { m_failcount = value; } }

        private string m_batchfilepath;
        [DataMember]
        public string BatchFilePath { get { return m_batchfilepath; } set { m_batchfilepath = value; } }

        private DataTable m_dscompanyid;
        [DataMember]
        public DataTable DSCompanyID { get { return m_dscompanyid; } set { m_dscompanyid = value; } }
		#endregion
	}
}
