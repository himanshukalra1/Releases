namespace GMDB.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Entity;
	using GMDBDetail.Entity;

	public class RecordCaseDB:Base.BaseDB
	{
		#region Constructors
		public RecordCaseDB() : base(new RecordCaseMap()) { }
		#endregion

		#region Methods
		public RecordCaseDetail Get(Int32? ID)
		{
			base.SetParameter(RecordCaseMap.ID, ID);
			return new RecordCaseDetail(GetReader(RecordCaseMap.ProcedureGet), m_map);
		}

		public void Save(RecordCaseDetail det)
		{
			Save(det, RecordCaseMap.ProcedureSave);
		}

		public void Delete(Int32? ID)
		{
			base.SetParameter(RecordCaseMap.ID, ID);
			Execute(RecordCaseMap.ProcedureDelete);
		}
		#endregion
	}
}
