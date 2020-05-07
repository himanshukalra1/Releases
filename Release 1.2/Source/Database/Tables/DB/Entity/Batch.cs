namespace GMDB.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Entity;
	using GMDBDetail.Entity;

	public class BatchDB:Base.BaseDB
	{
		#region Constructors
		public BatchDB() : base(new BatchMap()) { }
		#endregion

		#region Methods
		public BatchDetail Get(Int32? ID)
		{
			base.SetParameter(BatchMap.ID, ID);
			return new BatchDetail(GetReader(BatchMap.ProcedureGet), m_map);
		}

		public void Save(BatchDetail det)
		{
			Save(det, BatchMap.ProcedureSave);
		}

		public void Delete(Int32? ID)
		{
			base.SetParameter(BatchMap.ID, ID);
			Execute(BatchMap.ProcedureDelete);
		}
		#endregion
	}
}
