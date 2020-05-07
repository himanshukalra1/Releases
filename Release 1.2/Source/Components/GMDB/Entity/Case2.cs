namespace GMDB.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Entity;
	using GMDBDetail.Entity;

	public class Case2DB:Base.BaseDB
	{
		#region Constructors
		public Case2DB() : base(new Case2Map()) { }
		#endregion

		#region Methods
		public Case2Detail Get(Int32? ID)
		{
			base.SetParameter(Case2Map.ID, ID);
			return new Case2Detail(GetReader(Case2Map.ProcedureGet), m_map);
		}

        public DataTable GetByCaseID(Int32? ID)
        {
            base.SetParameter(Case2Map.CaseID, ID);
            return GetDatatable(Case2Map.ProcedureGet, Case2Map.CaseID);
        }

		public void Save(Case2Detail det)
		{
			Save(det, Case2Map.ProcedureSave);
		}

		public void Delete(Int32? ID)
		{
			base.SetParameter(Case2Map.ID, ID);
			Execute(Case2Map.ProcedureDelete);
		}
		#endregion
	}
}
