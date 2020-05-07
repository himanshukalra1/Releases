namespace GMUIBinder.Entity
{
	using System;
	using System.Collections.Generic;

    using GMUtilities;
    using GMUIDetail.Entity;

	public class BatchUB:Base.BaseUB
	{
		#region Members
        GMFacade.Entity.Batch m_bf = null;
		#endregion

		#region Constructors
        public BatchUB() : base() { m_bf = new GMFacade.Entity.Batch(); }
		#endregion

		#region Methods

        public DCBatch Get(DCBatch dcvdr)
        {
            m_bf.Get(dcvdr);
            GetHeaderToken(dcvdr);
            return dcvdr;
        }

        public DCBatch Save(DCBatch dcvdr)
        {
            m_bf.Save(dcvdr);
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
	}
}
