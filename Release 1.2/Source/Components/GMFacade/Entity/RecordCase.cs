namespace GMFacade.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;

    using GMUtilities;
    using GMBiz.Entity;
    using GMUIDetail.Entity;
    using GMDBDetail.Entity;

    public class RecordCase : Base.Base
	{
		#region Members
		RecordCaseBiz m_biz = null;
        Case2 m_cf = null;
		#endregion

		#region Constructors
        public RecordCase() : base() { m_biz = new RecordCaseBiz(); m_cf = new Case2(); }
		#endregion

		#region Methods
        public void Get(DCRecordCase dcrc)
        {
            BatchRecord br = new BatchRecord();
            try
            {
                GMUtilities.GMReflectionUtils.Copy(m_biz.Get(dcrc.ID), dcrc);
                if (HasID(dcrc.ID)) dcrc.CaseRecord = m_cf.Get(dcrc.ID.Value);
                DCBatchRecord dcbr = new DCBatchRecord();
                dcbr.ID = dcrc.RecordID;
                br.Get(dcbr);
                GMUtilities.GMReflectionUtils.Copy(dcbr, dcrc, false);
                Fetch2Child(dcrc, dcbr);
            }
            catch (Exception exp) { throw exp; }
            finally { br.Dispose(); }
        }
        
        public DCRecordCase Clone(int? ID, int RecordID)
        {
            DCRecordCase rv = new DCRecordCase();
            rv.ID = ID;
            Get(rv);
            rv.ID = null;
            rv.RecordID = RecordID;
            foreach (DCCase2 c in rv.CaseRecord) c.ID = null; 
            Save(rv);
            return rv;
        }

        public void Save(DCRecordCase dcrc)
        {
            try
            {
                RecordCaseDetail detrc = HasID(dcrc.ID)? m_biz.Get(dcrc.ID): new RecordCaseDetail();
                GMUtilities.GMReflectionUtils.Copy(dcrc, detrc);
                m_biz.Save(detrc);
                
                foreach (DCCase2 c in dcrc.CaseRecord)
                {
                    c.CaseID = detrc.ID;
                    if (dcrc.IsCivil) m_cf.Delete(dcrc.ID); else m_cf.Save(c);
                }
                dcrc.ID = detrc.ID;
            }
            catch (Exception exp)
            { throw exp; }
            finally { }
        }

        public void Delete(int ID)
        {
            try { m_biz.Delete(ID); }
            catch (Exception exp)
            { throw exp; }
            finally { }
        }
		#endregion

        #region Private Methods
        void Fetch2Child(DCRecordCase dcrc, DCBatchRecord dcbr)
        {
            if (!(dcrc.ID > 0))
            {
                dcrc.NameFound = dcbr.Name;
                dcrc.DOBFound = dcbr.DOB;
            }
            if (dcbr.CaseTypeID.HasValue)
            {
                DataRow rv = m_optbiz.GetCaseTypes(dcbr.CaseTypeID.Value);
                if (rv != null)
                {
                    dcrc.CaseType = rv[GMConstants.OptionsMap.Text].ToString();
                    dcrc.IsCivil = Convert.ToBoolean(rv[GMConstants.OptionsMap.IsCivil]);
                }
            }
            if (dcbr.CountyID.HasValue)
            {
                DataRow rv = m_optbiz.GetCounty(dcbr.CountyID.Value);
                if (rv != null)
                    dcrc.County = rv[GMConstants.OptionsMap.Text].ToString();
            }
        }
        #endregion

        #region Dispose
        public override void Dispose()
        {
            base.Dispose();
            m_biz.Dispose();
            m_cf.Dispose();
        }
        #endregion

	}
}
