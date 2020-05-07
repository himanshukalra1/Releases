namespace GMBiz.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Entity;
	using GMDBDetail.Entity;
	using GMDB.Entity;

	public class RecordCaseBiz:IDisposable
	{
		#region Members
		RecordCaseDB m_db = null;
		#endregion

		#region Constructors
		public RecordCaseBiz() : base() { m_db = new RecordCaseDB(); }
		#endregion

		#region Methods
        public RecordCaseDetail Get(Int32? ID)
        {
            return ((!ID.HasValue) ? null : m_db.Get(ID));
        }

        public DataTable GetDatatble(Int32? RecordID)
        {
            return ((!RecordID.HasValue) ? null : m_db.GetDatatble(RecordID));
        }

		public void Save(RecordCaseDetail det)
		{
            if(!det.ID.HasValue) det.CreatedDate = DateTime.Now;
            else det.ModifiedDate = DateTime.Now;
			m_db.Save(det);
		}

		public void Delete(Int32? ID)
		{
            Case2Biz m_cbiz = new Case2Biz();
            DataTable dt = m_cbiz.GetByCaseID(ID);
            if (dt != null)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    m_cbiz.Delete(Convert.ToInt32(dr[Case2Map.ID].ToString()));
                }
            }

			m_db.Delete(ID);
		}
		#endregion

		#region Dispose
		public void Dispose() { m_db.Dispose(); }
		#endregion
	}
}
