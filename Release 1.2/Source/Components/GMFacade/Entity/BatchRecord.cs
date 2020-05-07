namespace GMFacade.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;

    using GMUtilities;
    using GMBiz.Entity;
    using GMUIDetail.Entity;
    using GMDBDetail.Entity;

	public class BatchRecord:Base.Base
	{
		#region Members
		BatchRecordBiz m_biz = null;
		#endregion

		#region Constructors
		public BatchRecord() : base() { m_biz = new BatchRecordBiz(); }
		#endregion

		#region Methods
        public void Get(DCBatchRecord dcbr)
        {
            CompanyBiz cb = new CompanyBiz();
            VendorBiz vb = new VendorBiz();
            RecordHistory rh = new RecordHistory();
            try
            {
                GMUtilities.GMReflectionUtils.Copy(m_biz.Get(dcbr.ID), dcbr);
                dcbr.DSActionID = m_optbiz.GetActionTypes();
                dcbr.DSCaseTypeID = m_optbiz.GetCaseTypes();
                dcbr.DSCompanyID = cb.Get();
                dcbr.DSContactTypeID = m_optbiz.GetContactTypes();
                dcbr.DSRecordStatusID = m_optbiz.GetRecordStatusTypes();
                dcbr.DSCountyID = m_optbiz.GetCounties();
                dcbr.DSVendorID = vb.GetActive();
                dcbr.History = rh.Get(dcbr.ID);
                if (dcbr.CaseTypeID.HasValue)
                {
                    DataRow rv = m_optbiz.GetCaseTypes(dcbr.CaseTypeID.Value);
                    if (rv != null)
                        dcbr.IsCivil = Convert.ToBoolean(rv[GMConstants.OptionsMap.IsCivil]);
                }
            }
            catch (Exception exp) { throw exp; }
            finally { cb.Dispose(); vb.Dispose(); }
        }

        public void Save(DCBatchRecord dcbr)
        {
            RecordHistory rh = new RecordHistory();
            try
            {
                BatchRecordDetail detbr = HasID(dcbr.ID)? m_biz.Get(dcbr.ID) : new BatchRecordDetail();
                bool hasrh = (detbr.RecordStatusID != dcbr.RecordStatusID);
                GMUtilities.GMReflectionUtils.Copy(dcbr, detbr);
                m_biz.Save(detbr);
                dcbr.ID = detbr.ID;
                if (hasrh) rh.Save(detbr.ID.Value, detbr.RecordStatusID.Value, dcbr.SessionID);
            }
            catch (Exception exp)
            { throw exp; }
            finally { rh.Dispose(); }
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
