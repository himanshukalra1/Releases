namespace GMUIDetail.Entity
{
    using System;
    using System.Data;
    using System.ServiceModel;
    using System.Collections.Generic;
    using System.Runtime.Serialization;

    [DataContract]
    [SerializableAttribute()]
    [GMUtilities.ClassAttrib.Handler(GMConstants.UIBinderHandlerConstants.RecordPipelineUB)]
    public class DCRecordPipeline : Base.BaseDC
    {
        #region Members
        private DataTable m_dt;
        [DataMember]
        public DataTable DataTable { get { return m_dt; } set { m_dt = value; } }

        private Int32 m_pagenumber;
        [DataMember]
        public Int32 PageNumber { get { return m_pagenumber; } set { m_pagenumber = value; } }

        private Int32 m_numofrows;
        [DataMember]
        public Int32 NumOfRows { get { return m_numofrows; } set { m_numofrows = value; } }

        private String m_sortfield;
        [DataMember]
        public String SortField { get { return m_sortfield; } set { m_sortfield = value; } }

        private String m_sortorder;
        [DataMember]
        public String SortOrder { get { return m_sortorder; } set { m_sortorder = value; } }

        private String m_searchdata;
        [DataMember]
        public String SearchData { get { return m_searchdata; } set { m_searchdata = value; } }

        private Boolean m_lastflag;
        [DataMember]
        public Boolean LastFlag { get { return m_lastflag; } set { m_lastflag = value; } }

        private Int32 m_count;
        [DataMember]
        public Int32 Count { get { return m_count; } set { m_count = value; } }

        private DataTable m_dscompanyid;
        [DataMember]
        public DataTable DSCompanyID { get { return m_dscompanyid; } set { m_dscompanyid = value; } }

        private DataTable m_dsrecordstatusid;
        [DataMember]
        public DataTable DSRecordStatusID { get { return m_dsrecordstatusid; } set { m_dsrecordstatusid = value; } }

        private DataTable m_dsactionid;
        [DataMember]
        public DataTable DSActionID { get { return m_dsactionid; } set { m_dsactionid = value; } }

        private DataTable m_dschangestatus;
        [DataMember]
        public DataTable DSChangeStatus { get { return m_dschangestatus; } set { m_dschangestatus = value; } }

        private DataTable m_dscasetypeid;
        [DataMember]
        public DataTable DSCaseTypeID { get { return m_dscasetypeid; } set { m_dscasetypeid = value; } }

        private Int32 m_changestatus;
        [DataMember]
        public Int32 ChangeStatus { get { return m_changestatus; } set { m_changestatus = value; } }

        private List<DCBatchRecord> m_batchupdates;
        [DataMember]
        public List<DCBatchRecord> BatchUpdates { get { return m_batchupdates; } set { m_batchupdates = value; } }

        private Int32 m_batchid;
        [DataMember]
        public Int32 BatchID { get { return m_batchid; } set { m_batchid = value; } }

        private Int32 m_recordstatusid;
        [DataMember]
        public Int32 RecordStatusID { get { return m_recordstatusid; } set { m_recordstatusid = value; } }


        #endregion

    }
}
