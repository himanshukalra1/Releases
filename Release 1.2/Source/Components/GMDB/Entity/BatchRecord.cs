namespace GMDB.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Entity;
	using GMDBDetail.Entity;

	public class BatchRecordDB:Base.BaseDB
	{
		#region Constructors
		public BatchRecordDB() : base(new BatchRecordMap()) { }
		#endregion

		#region Methods
		public BatchRecordDetail Get(Int32? ID)
		{
			base.SetParameter(BatchRecordMap.ID, ID);
			return new BatchRecordDetail(GetReader(BatchRecordMap.ProcedureGet), m_map);
		}

		public void Save(BatchRecordDetail det)
		{
			Save(det, BatchRecordMap.ProcedureSave);
		}

		public void Delete(Int32? ID)
		{
			base.SetParameter(BatchRecordMap.ID, ID);
			Execute(BatchRecordMap.ProcedureDelete);
		}

        public DataSet GetRecordPipeline(int PageNumber, int NumOfRows, string SortField, string SearchData)
        {
            base.SetParameter(BatchRecordMap.PageNumber, PageNumber);
            base.SetParameter(BatchRecordMap.NumOfRows, NumOfRows);
            base.SetParameter(BatchRecordMap.SortField, SortField);
            base.SetParameter(BatchRecordMap.SearchData, SearchData);

            return GetSet(BatchRecordMap.ProcedureGetRecordPipeline);
        }



        public DataTable GetRecordSearch(int? RecordID)
        {
            base.SetParameter(BatchRecordMap.ID, RecordID);
            return GetDatatable(BatchRecordMap.ProcedureGetRecordSearch,"");
        }
		#endregion
	}
}
