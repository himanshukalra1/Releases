namespace GMBiz.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Entity;
	using GMDBDetail.Entity;
	using GMDB.Entity;

	public class Case2Biz:IDisposable
	{
		#region Members
		Case2DB m_db = null;
		#endregion

		#region Constructors
		public Case2Biz() : base() { m_db = new Case2DB(); }
		#endregion

		#region Methods
		public Case2Detail Get(Int32? ID)
		{
			return ((!ID.HasValue) ? null : m_db.Get(ID));
		}

		public void Save(Case2Detail det)
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
