namespace GMUIBinder.Entity
{
    using System;
    using System.Reflection;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.Data;
    using System.Web.UI.WebControls;

    using GMUtilities;
    using GMConstants;
    using GMUIDetail.Entity;

    public class RecordPipelineUB : Base.BaseUB
    {
        #region Members
        GMFacade.Entity.RecordPipeline m_bf = null;
        #endregion

        #region Constructors
        public RecordPipelineUB() : base() { m_bf = new GMFacade.Entity.RecordPipeline(); }
        #endregion

        #region Methods


        public DCRecordPipeline Get(DCRecordPipeline dcvdr)
        {
            m_bf.Get(dcvdr);
            if (dcvdr.RecordStatusID == 0)
                dcvdr.RecordStatusID = Convert.ToInt32(GMConstants.BatchUploadConstants.EnumRecordStatusType.RESEARCH);

            GetHeaderToken(dcvdr);
            return dcvdr;
        }

        public List<DCBatchRecord> Get(GridView gv)
        {
            List<DCBatchRecord> rv = new List<DCBatchRecord>();
            foreach (GridViewRow grv in gv.Rows) if (grv.Visible)
                {
                    DCBatchRecord vcr = new DCBatchRecord(gv, grv);
                    if (vcr.ID == null) continue;
                    rv.Add(vcr);
                }
            return rv;
        }

        public DCRecordPipeline Save(DCRecordPipeline dcvdr)
        {
            dcvdr.BatchUpdates = Get(((GridView)m_cpage.Get()));
            if(dcvdr.BatchUpdates.Count >0)
                m_bf.Save(dcvdr);
            else
                throw new ApplicationException(ErrorConstants.RecordSelectError);
            GetHeaderToken(dcvdr);
            return dcvdr;
        }

        #endregion

        #region Dispose
        public override void Dispose()
        {
            base.Dispose();
            m_bf.Dispose();
        }
        #endregion


        #region ObjectDataSource Methods
        private static int RecordCount = 0;

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static DataTable GetRecordPipelineData(int PageNumber, int NumOfRows, string SortField, string Search, int BatchID)
        {
            if (string.IsNullOrEmpty(Search))
                return null;
            DCRecordPipeline oDet = new DCRecordPipeline();
            oDet.PageNumber = PageNumber / NumOfRows;
            oDet.NumOfRows = NumOfRows;
            oDet.SortField = SortField;

            oDet.SearchData = Search;
            GMFacade.Entity.RecordPipeline m_bf = new GMFacade.Entity.RecordPipeline();
            oDet = m_bf.GetRecordPipelineData(oDet);


            RecordCount = oDet.Count;
            return oDet.DataTable;
        }
        public static int GetTotalRecordCount(string search, int BatchID)
        {
            return RecordCount;
        }


        #endregion


    }
}
