namespace GMDB.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Entity;
	using GMDBDetail.Entity;

	public class CompanyDB:Base.BaseDB
	{
		#region Constructors
		public CompanyDB() : base(new CompanyMap()) { }
		#endregion

		#region Methods
		public CompanyDetail Get(Int32? ID)
		{
			base.SetParameter(CompanyMap.ID, ID);
			return new CompanyDetail(GetReader(CompanyMap.ProcedureGet), m_map);
		}

		public void Save(CompanyDetail det)
		{
			Save(det, CompanyMap.ProcedureSave);
		}

		public void Delete(Int32? ID)
		{
			base.SetParameter(CompanyMap.ID, ID);
			Execute(CompanyMap.ProcedureDelete);
		}
		#endregion
	}
}
