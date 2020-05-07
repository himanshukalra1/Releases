namespace GMFacade.Entity
{
    using System;
    using System.Data;
    using System.Collections.Generic;

    using GMUtilities;
    using GMBiz.Entity;
    using GMUIDetail.Entity;
    using GMDBDetail.Entity;

    public class RecordSearch : Base.Base
    {
        #region Members
        BatchRecordBiz m_biz = null;
        #endregion

        #region Constructors
        public RecordSearch() : base() { m_biz = new BatchRecordBiz(); }
        #endregion

        #region Methods



        public DCRecordSearch Get(DCRecordSearch dcvdr)
        {
            try
            {
                dcvdr.DataTable = m_biz.GetRecordSearchData(dcvdr.ID);
                if (dcvdr.DataTable != null && dcvdr.DataTable.Rows.Count > 0)
                    dcvdr.IsCivil = Convert.ToBoolean(dcvdr.DataTable.Rows[0][GMConstants.OptionsMap.IsCivil]);
            }
            catch (Exception exp) { throw exp; }
            finally { }
            return dcvdr;
        }

        public DataTable GetRecordCaseData(int RecordId)
        {
            DataTable dt;
            try
            {
                RecordCaseBiz m_rcbiz = new RecordCaseBiz();
                dt = m_rcbiz.GetDatatble(RecordId);
            }
            catch (Exception exp) { throw exp; }
            finally { }
            return dt;
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
