namespace GMUIBinder.Entity
{
	using System;
	using System.Collections.Generic;

    using GMUtilities;
    using GMUIDetail.Entity;

	public class BatchRecordUB:Base.BaseUB
	{
		#region Members
        GMFacade.Entity.BatchRecord m_brf = null;
		#endregion

		#region Constructors
		public BatchRecordUB() : base() { m_brf = new GMFacade.Entity.BatchRecord(); }
		#endregion

		#region Methods
        public DCBatchRecord Get(DCBatchRecord dcbr)
        {
            m_brf.Get(dcbr);
            GetHeaderToken(dcbr);
            return dcbr;
        }

        public DCBatchRecord Save(DCBatchRecord dcbr)
        {
            m_brf.Save(dcbr);
            GetHeaderToken(dcbr);
            return dcbr;
        }
		#endregion

        #region Dispose
        public override void Dispose()
        {
            base.Dispose();
            m_brf.Dispose();
        }
        #endregion

	}
}
