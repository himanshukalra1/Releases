namespace GMFacade.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;

    using GMUtilities;
    using GMBiz.Entity;
    using GMUIDetail.Entity;
    using GMDBDetail.Entity;


    public class Company : Base.Base
	{
		#region Members
		CompanyBiz m_biz = null;
		#endregion

		#region Constructors
		public Company() : base() { m_biz = new CompanyBiz(); }

        public void Get(Companies es)
        {
            try { es.DSMembers = m_biz.Get(); }
            catch (Exception exp) { throw exp; }
            finally { }
        }

        public void Get(DCCompany dcvdr)
        {
            try
            {
                GMUtilities.GMReflectionUtils.Copy(m_biz.Get(dcvdr.ID), dcvdr);
                dcvdr.DSStateID = m_optbiz.GetStates();
            }
            catch (Exception exp) { throw exp; }
            finally { }
        }

        public void Save(DCCompany dcvdr)
        {
            try
            {
                CompanyDetail detvdr = new CompanyDetail();
                GMUtilities.GMReflectionUtils.Copy(dcvdr, detvdr);

                m_biz.Save(detvdr);
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

		#region Methods
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
