namespace GMDBMap.Entity
{
	using System;

	public class CompanyMap : Base.IBaseMap
	{
		#region Procedure
		public const string ProcedureGet = "Get_Company";
		public const string ProcedureSave = "Save_Company";
		public const string ProcedureDelete= "Delete_Company";
		#endregion

		#region Members
		public const string ID = "ID";
		public const string Name = "Name";
		public const string AddressL1 = "AddressL1";
		public const string AddressL2 = "AddressL2";
		public const string City = "City";
		public const string StateID = "StateID";
		public const string PostalCode = "PostalCode";
		public const string ContactPerson = "ContactPerson";
		public const string Phone = "Phone";
		public const string Fax = "Fax";
		public const string Email = "Email";
		public const string WebSite = "WebSite";
		public const string Active = "Active";
		public const string DTSMapping = "DTSMapping";
		public const string CaseTypeMapping = "CaseTypeMapping";
		public const string Comments = "Comments";
		#endregion
	}
}
