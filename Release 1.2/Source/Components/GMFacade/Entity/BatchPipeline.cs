namespace GMFacade.Entity
{
    using System;
    using System.Data;
    using System.Collections.Generic;

    using GMUtilities;
    using GMBiz.Entity;
    using GMUIDetail.Entity;
    using GMDBDetail.Entity;
    using GMBiz.Security;

    public class BatchPipeline : Base.Base
    {
        #region Members
        BatchBiz m_biz = null;
        #endregion

        #region Constructors
        public BatchPipeline() : base() { m_biz = new BatchBiz(); }
        #endregion

        #region Methods

        public void Get(DCBatch dcvdr)
        {
            CompanyBiz m_CompanyBiz = new CompanyBiz();
            try
            {
                dcvdr.DSCompanyID = m_CompanyBiz.Get();
            }
            catch (Exception exp) { throw exp; }
            finally { m_CompanyBiz.Dispose(); }
        }

        public DCBatchPipeline Get(DCBatchPipeline dcvdr)
        {
            CompanyBiz m_CompanyBiz = new CompanyBiz();
            UserBiz m_UserBiz = new UserBiz();
            try
            {
                dcvdr.DSCompanyID = m_CompanyBiz.Get();
                dcvdr.DSUserID = m_UserBiz.Get();
                AddDefaultOption(dcvdr.DSCompanyID);
                AddDefaultOption(dcvdr.DSUserID);
            }
            catch (Exception exp) { throw exp; }
            finally { m_CompanyBiz.Dispose(); }
            return dcvdr;
        }


        public DCBatchPipeline GetBatchPipelineData(DCBatchPipeline dcvdr)
        {
            try
            {
                dcvdr.DataTable = m_biz.GetBatchPipeline(dcvdr.PageNumber, dcvdr.NumOfRows, dcvdr.SortField, dcvdr.SearchData);
                dcvdr.Count = m_biz.Rowcount;
            }
            catch (Exception exp) { throw exp; }
            finally { }
            return dcvdr;
        }



        #endregion

        #region Dispose
        public override void Dispose()
        {
            base.Dispose();
            m_biz.Dispose();
        }
        #endregion
    }
}
