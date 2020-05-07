namespace GMUIBinder.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.Data;

    using GMUtilities;
    using GMUIDetail.Entity;

    public class BatchPipelineUB : Base.BaseUB
    {
        #region Members
        GMFacade.Entity.BatchPipeline m_bf = null;
        #endregion

        #region Constructors
        public BatchPipelineUB() : base() { m_bf = new GMFacade.Entity.BatchPipeline(); }
        #endregion

        #region Methods
        public DCBatchPipeline Get(DCBatchPipeline dcvdr)
        {
            m_bf.Get(dcvdr);
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
        private static int batchCount = 0;
        
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static DataTable GetBatchPipelineData(int PageNumber, int NumOfRows, string SortField, string Search)
        {
            DCBatchPipeline oDet = new DCBatchPipeline();
            oDet.PageNumber = PageNumber / NumOfRows;
            oDet.NumOfRows = NumOfRows;
            oDet.SortField = SortField;
            oDet.SearchData = Search;
            GMFacade.Entity.BatchPipeline m_bf = new GMFacade.Entity.BatchPipeline();
            oDet = m_bf.GetBatchPipelineData(oDet);
            batchCount = oDet.Count;
            m_bf.Dispose();
            return oDet.DataTable;
        }

        public static int GetTotalBatchCount(string search)
        {
            return batchCount;
        }
        #endregion
    }
}
