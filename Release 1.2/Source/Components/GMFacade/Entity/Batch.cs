namespace GMFacade.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;

    using GMUtilities;
    using GMBiz.Entity;
    using GMUIDetail.Entity;
    using GMDBDetail.Entity;

	public class Batch:Base.Base
	{
		#region Members
		BatchBiz m_biz = null;
		#endregion

		#region Constructors
		public Batch() : base() { m_biz = new BatchBiz(); }
		#endregion

		#region Methods

        public void Get(DCBatch dcvdr)
        {                
            CompanyBiz m_CompanyBiz = new CompanyBiz();
            try
            {
                dcvdr.DSCompanyID = m_CompanyBiz.GetActive();
            }
            catch (Exception exp) { throw exp; }
            finally { m_CompanyBiz.Dispose(); }
        }
        
        public void Save(DCBatch dcvdr)
        {
            CompanyBiz cbiz = new CompanyBiz();
            BatchRecordBiz brbiz = new BatchRecordBiz();
            try
            {
                BatchDetail detvdr = new BatchDetail();
                GMUtilities.GMReflectionUtils.Copy(dcvdr, detvdr);
                detvdr.CreatedDate = DateTime.Now;
                DataTable dt = m_biz.Save(detvdr, cbiz.Get(dcvdr.CompanyID), dcvdr.BatchFilePath, m_optbiz.GetCounties());
                //Save Records
                dcvdr.Messages = m_biz.Messages;

                brbiz.Save(dt, detvdr, dcvdr.SessionID);
                dcvdr.ID = detvdr.ID;
                dcvdr.Messages.AddRange(brbiz.Messages);
                //Update the Total, Pass and Fail count.
                m_biz.Save(detvdr);
            }
            catch (Exception exp)
            { throw exp; }
            finally { cbiz.Dispose(); brbiz.Dispose(); }
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
