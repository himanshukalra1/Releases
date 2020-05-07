namespace GMBiz.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Entity;
	using GMDBDetail.Entity;
	using GMDB.Entity;

	public class RecordHistoryBiz:IDisposable
	{
		#region Members
		RecordHistoryDB m_db = null;
		#endregion

		#region Constructors
		public RecordHistoryBiz() : base() { m_db = new RecordHistoryDB(); }
		#endregion

		#region Methods
		public RecordHistoryDetail Get(Int32? ID)
		{
			return ((!ID.HasValue) ? null : m_db.Get(ID));
		}

        public DataTable GetByRecordID(Int32? ID)
        {
            return ((!ID.HasValue) ? null : m_db.GetByRecordID(ID));
        }

		public void Save(RecordHistoryDetail det)
		{
			m_db.Save(det);
		}

		public void Delete(Int32? ID)
		{
			m_db.Delete(ID);
		}
		#endregion

		#region Dispose
		public void Dispose() { m_db.Dispose(); }
		#endregion
	}
}
