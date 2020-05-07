namespace GMUIDetail.Entity
{
    using System;
    using System.Data;
    using System.ServiceModel;
    using System.Collections.Generic;
    using System.Runtime.Serialization;
    
	[DataContract]
	[SerializableAttribute()]
	[GMUtilities.ClassAttrib.Handler(GMConstants.UIBinderHandlerConstants.BatchPipelineUB)]
    public class DCBatchPipeline : Base.BaseDC
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

        private Boolean  m_lastflag;
        [DataMember]
        public Boolean LastFlag { get { return m_lastflag; } set { m_lastflag = value; } }

        private Int32 m_count;
        [DataMember]
        public Int32 Count { get { return m_count; } set { m_count = value; } }

        private DataTable m_dscompanyid;
        [DataMember]
        public DataTable DSCompanyID { get { return m_dscompanyid; } set { m_dscompanyid = value; } }

        private DataTable m_dsuserid;
        [DataMember]
        public DataTable DSUserID { get { return m_dsuserid; } set { m_dsuserid = value; } }

        #endregion

    }
}
