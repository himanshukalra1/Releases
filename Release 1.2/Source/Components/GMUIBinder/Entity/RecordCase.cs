namespace GMUIBinder.Entity
{
	using System;
    using System.Reflection;
	using System.Collections.Generic;
    using System.Web.UI.WebControls;

    using GMUtilities;
    using GMConstants;
    using GMUIDetail.Entity;
   
    public class RecordCaseUB : Base.BaseUB
	{
		#region Members
        GMFacade.Entity.RecordCase m_rf = null;
        Case2UB m_cbiz = null;
		#endregion

		#region Constructors
        public RecordCaseUB() : base() { m_rf = new GMFacade.Entity.RecordCase(); m_cbiz = new Case2UB(); }
		#endregion

		#region Methods
        public DCRecordCase Get(DCRecordCase dcvdr)
        {
            dcvdr.RecordID = m_cpage.GetQueryValue<Int32>(QueryStringConstants.RecordID);
            m_rf.Get(dcvdr);
            GetHeaderToken(dcvdr);
            return dcvdr;
        }

        public DCRecordCase Clone(int ID, int RecordID)
        {
            DCRecordCase rv = m_rf.Clone(ID, RecordID);
            GetHeaderToken(rv);
            return rv;
        }

        public DCRecordCase Save(DCRecordCase dcvdr)
        {
            dcvdr.RecordID = m_cpage.GetQueryValue<Int32>(QueryStringConstants.RecordID);
            dcvdr.CaseRecord = m_cbiz.Get(((GridView)m_cpage.Get()));
            m_rf.Save(dcvdr);
            GetHeaderToken(dcvdr);
            return dcvdr;
        }

        public void Delete(Int32 ID)
        {
            m_rf.Delete(ID);
        } 

		#endregion

        #region Dispose
        public override void Dispose()
        {
            base.Dispose();
            m_rf.Dispose();
            m_cbiz.Dispose();
        }
        #endregion
	}
}
