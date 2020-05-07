namespace GMDB.Entity
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Entity;
	using GMDBDetail.Entity;

	public class VendorDB:Base.BaseDB
	{
		#region Constructors
		public VendorDB() : base(new VendorMap()) { }
		#endregion

		#region Methods
		public VendorDetail Get(Int32? ID)
		{
			base.SetParameter(VendorMap.ID, ID);
			return new VendorDetail(GetReader(VendorMap.ProcedureGet), m_map);
		}

		public void Save(VendorDetail det)
		{
			Save(det, VendorMap.ProcedureSave);
		}

		public void Delete(Int32? ID)
		{
			base.SetParameter(VendorMap.ID, ID);
			Execute(VendorMap.ProcedureDelete);
		}
		#endregion
	}
}
