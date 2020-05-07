namespace GMDB.Security
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Security;
	using GMDBDetail.Security;

	public class Group2PermissionDB:Base.BaseDB
	{
		#region Constructors
		public Group2PermissionDB() : base(new Group2PermissionMap()) { }
		#endregion

		#region Methods
		public Group2PermissionDetail Get(Int32? ID)
		{
			base.SetParameter(Group2PermissionMap.ID, ID);
			return new Group2PermissionDetail(GetReader(Group2PermissionMap.ProcedureGet), m_map);
		}

		public void Save(Group2PermissionDetail det)
		{
			Save(det, Group2PermissionMap.ProcedureSave);
		}

		public void Delete(Int32? ID)
		{
			base.SetParameter(Group2PermissionMap.ID, ID);
			Execute(Group2PermissionMap.ProcedureDelete);
		}
		#endregion
	}
}
