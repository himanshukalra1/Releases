namespace GMFacade.Entity
{
    using System;
    using System.Data;
    using System.Collections.Generic;

    using GMUtilities;
    using GMBiz.Entity;
    using GMUIDetail.Entity;
    using GMDBDetail.Entity;

    public class RecordPipeline : Base.Base
    {
        #region Members
        BatchRecordBiz m_biz = null;
        #endregion

        #region Constructors
        public RecordPipeline() : base() { m_biz = new BatchRecordBiz(); }
        #endregion

        #region Methods

        public void Save(DCRecordPipeline dcvdr)
        {
            BatchRecord m_br = new BatchRecord();
            try
            {
                foreach (DCBatchRecord br in dcvdr.BatchUpdates)
                {
                    m_br.Get(br); //To get the existing Data
                    br.RecordStatusID = dcvdr.ChangeStatus;
                    br.SessionID = dcvdr.SessionID;
                    m_br.Save(br);
                }

            }
            catch (Exception exp) { throw exp; }
            finally { }
        }

        public DCRecordPipeline Get(DCRecordPipeline dcvdr)
        {
            CompanyBiz m_CompanyBiz = new CompanyBiz();
            try
            {
                dcvdr.DSActionID = m_optbiz.GetActionTypes();
                dcvdr.DSRecordStatusID = m_optbiz.GetRecordStatusTypes();
                dcvdr.DSCaseTypeID = m_optbiz.GetCaseTypes();
                dcvdr.DSCompanyID = m_CompanyBiz.Get();

                AddDefaultOption(dcvdr.DSActionID);
                AddDefaultOption(dcvdr.DSRecordStatusID);
                AddDefaultOption(dcvdr.DSCaseTypeID);
                AddDefaultOption(dcvdr.DSCompanyID);
                dcvdr.DSChangeStatus = dcvdr.DSRecordStatusID;


            }
            catch (Exception exp) { throw exp; }
            finally { m_CompanyBiz.Dispose(); }
            return dcvdr;
        }

        public DCRecordPipeline GetRecordPipelineData(DCRecordPipeline dcvdr)
        {
            try
            {
                dcvdr.DataTable = m_biz.GetRecordPipeline(dcvdr.PageNumber, dcvdr.NumOfRows, dcvdr.SortField, dcvdr.SearchData);
                dcvdr.Count = m_biz.m_RowCount;
            }
            catch (Exception exp) { throw exp; }
            finally { }
            return dcvdr;
        }

        public DCRecordSearch GetRecordSearchData(int RecordID)
        {
            DCRecordSearch dcvdr = new DCRecordSearch();
            try
            {
                dcvdr.DataTable = m_biz.GetRecordSearchData(RecordID);
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
