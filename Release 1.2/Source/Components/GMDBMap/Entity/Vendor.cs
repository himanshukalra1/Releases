namespace GMDBMap.Entity
{
	using System;

	public class VendorMap : Base.IBaseMap
	{
		#region Procedure
		public const string ProcedureGet = "Get_Vendor";
		public const string ProcedureSave = "Save_Vendor";
		public const string ProcedureDelete= "Delete_Vendor";
		#endregion

		#region Members
		public const string ID = "ID";
		public const string Name = "Name";
		public const string AddressL1 = "AddressL1";
		public const string AddressL2 = "AddressL2";
		public const string City = "City";
		public const string StateID = "StateID";
		public const string PostalCode = "PostalCode";
		public const string Comments = "Comments";
		public const string ContactPerson = "ContactPerson";
		public const string Phone = "Phone";
		public const string Fax = "Fax";
		public const string Email = "Email";
		public const string Active = "Active";
		public const string GracePeriod = "GracePeriod";
		public const string PaymentID = "PaymentID";
		#endregion
	}
}
