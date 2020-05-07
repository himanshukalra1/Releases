namespace GMBiz.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Entity;
	using GMDBDetail.Entity;
	using GMDB.Entity;

	public class VendorBiz:IDisposable
	{
		#region Members
		VendorDB m_db = null;
		#endregion

		#region Constructors
		public VendorBiz() : base() { m_db = new VendorDB(); }
		#endregion

		#region Methods
		public VendorDetail Get(Int32? ID)
		{
			return ((!ID.HasValue) ? null : m_db.Get(ID));
		}

        public DataTable Get()
        {
            return m_db.Get();
        }

        public DataTable GetActive()
        {
            DataTable dt = Get();
            DataRowCollection drc = dt.Rows;
            foreach (DataRow dr in drc)
                if (!GMUtilities.GMConvert.GetBool(dr[VendorMap.Active])) dr.Delete();
            dt.AcceptChanges();
            return dt;
        }

		public void Save(VendorDetail det)
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
