namespace GMDB.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Entity;
	using GMDBDetail.Entity;

	public class RecordHistoryDB:Base.BaseDB
	{
		#region Constructors
		public RecordHistoryDB() : base(new RecordHistoryMap()) { }
		#endregion

		#region Methods
		public RecordHistoryDetail Get(Int32? ID)
		{
			base.SetParameter(RecordHistoryMap.ID, ID);
			return new RecordHistoryDetail(GetReader(RecordHistoryMap.ProcedureGet), m_map);
		}

        public DataTable GetByRecordID(Int32? ID)
        {
            base.SetParameter(RecordHistoryMap.RecordID, ID);
            return GetDatatable(RecordHistoryMap.ProcedureGet, RecordHistoryMap.RecordID);
        }

		public void Save(RecordHistoryDetail det)
		{
			Save(det, RecordHistoryMap.ProcedureSave);
		}

		public void Delete(Int32? ID)
		{
			base.SetParameter(RecordHistoryMap.ID, ID);
			Execute(RecordHistoryMap.ProcedureDelete);
		}
		#endregion
	}
}
