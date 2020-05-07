namespace GMBiz.Security
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Security;
	using GMDBDetail.Security;
	using GMDB.Security;

	public class Group2Biz:IDisposable
	{
		#region Members
		Group2DB m_db = null;
		#endregion

		#region Constructors
		public Group2Biz() : base() { m_db = new Group2DB(); }
		#endregion

		#region Methods
		public Group2Detail Get(Int32? ID)
		{
			return ((!ID.HasValue) ? null : m_db.Get(ID));
		}

		public void Save(Group2Detail det)
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
