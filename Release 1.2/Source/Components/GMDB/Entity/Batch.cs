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

        public DataSet GetBatchPipeline(int PageNumber, int NumOfRows, string SortField, string SearchData)
        {
            base.SetParameter(BatchMap.PageNumber, PageNumber);
            base.SetParameter(BatchMap.NumOfRows, NumOfRows);
            base.SetParameter(BatchMap.SortField, SortField);
            base.SetParameter(BatchMap.SearchData, SearchData);

            return GetSet(BatchMap.ProcedureGetBatchPipeline);
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
