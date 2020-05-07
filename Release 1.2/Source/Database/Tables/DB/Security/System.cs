namespace GMDB.Security
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Security;
	using GMDBDetail.Security;

	public class SystemDB:Base.BaseDB
	{
		#region Constructors
		public SystemDB() : base(new SystemMap()) { }
		#endregion

		#region Methods
		public SystemDetail Get(Int32? ID)
		{
			base.SetParameter(SystemMap.ID, ID);
			return new SystemDetail(GetReader(SystemMap.ProcedureGet), m_map);
		}

		public void Save(SystemDetail det)
		{
			Save(det, SystemMap.ProcedureSave);
		}

		public void Delete(Int32? ID)
		{
			base.SetParameter(SystemMap.ID, ID);
			Execute(SystemMap.ProcedureDelete);
		}
		#endregion
	}
}
