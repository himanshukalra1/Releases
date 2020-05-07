namespace GMUIBinder.Entity
{
    using System;
    using System.Reflection;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.Data;
    using System.Web.UI.WebControls;

    using GMUtilities;
    using GMUIDetail.Entity;

    public class RecordSearchUB : Base.BaseUB
    {
        #region Members
        GMFacade.Entity.RecordSearch m_bf = null;
        #endregion

        #region Constructors
        public RecordSearchUB() : base() { m_bf = new GMFacade.Entity.RecordSearch(); }
        #endregion

        #region Methods
        public DCRecordSearch Get(DCRecordSearch dcvdr)
        {
            m_bf.Get(dcvdr);
            GetHeaderToken(dcvdr);
            return dcvdr;
        }
        
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static DataTable GetRecordCaseData(int RecordId)
        {
            GMFacade.Entity.RecordSearch rs = new GMFacade.Entity.RecordSearch();
            DataTable dt = rs.GetRecordCaseData(RecordId);
            rs.Dispose();
            return dt;
        }

        [DataObjectMethod(DataObjectMethodType.Delete)]
        public static void OnDelete(int ID)
        {
            RecordCaseUB m_biz = new RecordCaseUB();
            m_biz.Delete(ID);
        }

        #endregion

        #region Dispose
        public override void Dispose()
        {
            base.Dispose();
            m_bf.Dispose();
        }
        #endregion


    }
}
