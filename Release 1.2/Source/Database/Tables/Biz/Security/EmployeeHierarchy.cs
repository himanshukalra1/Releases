namespace GMBiz.Security
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Security;
	using GMDBDetail.Security;
	using GMDB.Security;

	public class EmployeeHierarchyBiz:IDisposable
	{
		#region Members
		EmployeeHierarchyDB m_db = null;
		#endregion

		#region Constructors
		public EmployeeHierarchyBiz() : base() { m_db = new EmployeeHierarchyDB(); }
		#endregion

		#region Methods
		public EmployeeHierarchyDetail Get(Int32? ID)
		{
			return ((!ID.HasValue) ? null : m_db.Get(ID));
		}

		public void Save(EmployeeHierarchyDetail det)
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
