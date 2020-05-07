namespace GMDB.Security
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Security;
	using GMDBDetail.Security;

	public class EmployeeHierarchyDB:Base.BaseDB
	{
		#region Constructors
		public EmployeeHierarchyDB() : base(new EmployeeHierarchyMap()) { }
		#endregion

		#region Methods
		public EmployeeHierarchyDetail Get(Int32? ID)
		{
			base.SetParameter(EmployeeHierarchyMap.ID, ID);
			return new EmployeeHierarchyDetail(GetReader(EmployeeHierarchyMap.ProcedureGet), m_map);
		}

		public void Save(EmployeeHierarchyDetail det)
		{
			Save(det, EmployeeHierarchyMap.ProcedureSave);
		}

		public void Delete(Int32? ID)
		{
			base.SetParameter(EmployeeHierarchyMap.ID, ID);
			Execute(EmployeeHierarchyMap.ProcedureDelete);
		}
		#endregion
	}
}
