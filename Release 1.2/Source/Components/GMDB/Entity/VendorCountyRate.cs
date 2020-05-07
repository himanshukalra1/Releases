namespace GMDB.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Entity;
	using GMDBDetail.Entity;

	public class VendorCountyRateDB:Base.BaseDB
	{
		#region Constructors
		public VendorCountyRateDB() : base(new VendorCountyRateMap()) { }
		#endregion

		#region Methods
		public VendorCountyRateDetail Get(Int32? ID)
		{
			base.SetParameter(VendorCountyRateMap.ID, ID);
			return new VendorCountyRateDetail(GetReader(VendorCountyRateMap.ProcedureGet), m_map);
		}

        public DataTable GetByVendor(Int32? ID)
        {
            base.SetParameter(VendorCountyRateMap.VendorID, ID);
            return GetDatatable(VendorCountyRateMap.ProcedureGet, VendorCountyRateMap.VendorID);
        }

		public void Save(VendorCountyRateDetail det)
		{
			Save(det, VendorCountyRateMap.ProcedureSave);
		}

		public void Delete(Int32? ID)
		{
			base.SetParameter(VendorCountyRateMap.ID, ID);
			Execute(VendorCountyRateMap.ProcedureDelete);
		}
		#endregion
	}
}
