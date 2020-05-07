namespace GMDBMap.Entity
{
	using System;

	public class VendorCountyRateMap : Base.IBaseMap
	{
		#region Procedure
		public const string ProcedureGet = "Get_Vendor_CountyRate";
		public const string ProcedureSave = "Save_Vendor_CountyRate";
		public const string ProcedureDelete= "Delete_Vendor_CountyRate";
		#endregion

		#region Members
		public const string ID = "ID";
		public const string VendorID = "VendorID";
		public const string CountyID = "CountyID";
		public const string Rate = "Rate";
		#endregion
	}
}
