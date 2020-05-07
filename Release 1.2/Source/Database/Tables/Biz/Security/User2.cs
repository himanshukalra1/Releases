namespace GMBiz.Security
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Security;
	using GMDBDetail.Security;
	using GMDB.Security;

	public class User2Biz:IDisposable
	{
		#region Members
		User2DB m_db = null;
		#endregion

		#region Constructors
		public User2Biz() : base() { m_db = new User2DB(); }
		#endregion

		#region Methods
		public User2Detail Get(Int32? ID)
		{
			return ((!ID.HasValue) ? null : m_db.Get(ID));
		}

		public void Save(User2Detail det)
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
