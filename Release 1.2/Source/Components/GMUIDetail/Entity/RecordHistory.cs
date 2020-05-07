namespace GMUIDetail.Entity
{
	using System;
	using System.Data;
	using System.ServiceModel;
	using System.Collections.Generic;
	using System.Runtime.Serialization;

	[DataContract]
	[SerializableAttribute()]
	[GMUtilities.ClassAttrib.Handler(GMConstants.UIBinderHandlerConstants.RecordHistoryUB)]
	public partial class DCRecordHistory : Base.BaseDC
	{
		#region Members

		private int? m_recordid;
		[DataMember]
		public int? RecordID {get{ return m_recordid;} set{ m_recordid=value; }}

		private DateTime? m_createddate;
		[DataMember]
		public DateTime? CreatedDate {get{ return m_createddate;} set{ m_createddate=value; }}

		private int? m_recordstatusid;
		[DataMember]
		public int? RecordStatusID {get{ return m_recordstatusid;} set{ m_recordstatusid=value; }}

		private int? m_userid;
		[DataMember]
		public int? UserID {get{ return m_userid;} set{ m_userid=value; }}

        private string m_status;
        [DataMember]
        public string Status { get { return m_status; } set { m_status = value; } }

        private string m_by;
        [DataMember]
        public string By { get { return m_by; } set { m_by = value; } }
		#endregion
	}

    [DataContract]
    [SerializableAttribute()]
    [GMUtilities.ClassAttrib.Handler(GMConstants.UIBinderHandlerConstants.RHReportUB)]
    public partial class DCRHReport : Base.BaseDC
    {
        #region Members
        private DataTable m_dsrecordstatusid;
        [DataMember]
        public DataTable DSRecordStatusID { get { return m_dsrecordstatusid; } set { m_dsrecordstatusid = value; } }
        #endregion
    }
}
