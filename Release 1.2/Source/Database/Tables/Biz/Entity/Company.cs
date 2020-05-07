namespace GMBiz.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Entity;
	using GMDBDetail.Entity;
	using GMDB.Entity;

	public class CompanyBiz:IDisposable
	{
		#region Members
		CompanyDB m_db = null;
		#endregion

		#region Constructors
		public CompanyBiz() : base() { m_db = new CompanyDB(); }
		#endregion

		#region Methods
		public CompanyDetail Get(Int32? ID)
		{
			return ((!ID.HasValue) ? null : m_db.Get(ID));
		}

		public void Save(CompanyDetail det)
		{
			m_db.Save(det);
		}

		public void Delete(Int32? ID)
		{
			m_db.Delete(ID);
		}
		#endregion

		#region Dispose
		public void Dispose() { m_db.Dispose(); }
		#endregion
	}
}
