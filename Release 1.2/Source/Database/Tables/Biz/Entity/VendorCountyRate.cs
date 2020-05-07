namespace GMBiz.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Entity;
	using GMDBDetail.Entity;
	using GMDB.Entity;

	public class VendorCountyRateBiz:IDisposable
	{
		#region Members
		VendorCountyRateDB m_db = null;
		#endregion

		#region Constructors
		public VendorCountyRateBiz() : base() { m_db = new VendorCountyRateDB(); }
		#endregion

		#region Methods
		public VendorCountyRateDetail Get(Int32? ID)
		{
			return ((!ID.HasValue) ? null : m_db.Get(ID));
		}

		public void Save(VendorCountyRateDetail det)
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
