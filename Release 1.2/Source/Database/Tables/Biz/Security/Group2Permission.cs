namespace GMBiz.Security
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Security;
	using GMDBDetail.Security;
	using GMDB.Security;

	public class Group2PermissionBiz:IDisposable
	{
		#region Members
		Group2PermissionDB m_db = null;
		#endregion

		#region Constructors
		public Group2PermissionBiz() : base() { m_db = new Group2PermissionDB(); }
		#endregion

		#region Methods
		public Group2PermissionDetail Get(Int32? ID)
		{
			return ((!ID.HasValue) ? null : m_db.Get(ID));
		}

		public void Save(Group2PermissionDetail det)
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
