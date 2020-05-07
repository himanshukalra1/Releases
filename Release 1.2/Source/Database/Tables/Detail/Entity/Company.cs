namespace GMDBDetail.Entity
{
	using System;
	using System.Data;
	using GMDBMap.Base;
	using System.Collections.Generic;

	public class CompanyDetail : Base.BaseDetail
	{
		#region Constructors
		public CompanyDetail(): base(){}
		public CompanyDetail(IDataReader reader, IBaseMap mapinstance) : base(reader, mapinstance) { }
		#endregion

		#region Members

		private string m_name;
		public string Name {get{ return m_name;} set{ m_name=value; }}

		private string m_addressl1;
		public string AddressL1 {get{ return m_addressl1;} set{ m_addressl1=value; }}

		private string m_addressl2;
		public string AddressL2 {get{ return m_addressl2;} set{ m_addressl2=value; }}

		private string m_city;
		public string City {get{ return m_city;} set{ m_city=value; }}

		private int? m_stateid;
		public int? StateID {get{ return m_stateid;} set{ m_stateid=value; }}

		private string m_postalcode;
		public string PostalCode {get{ return m_postalcode;} set{ m_postalcode=value; }}

		private string m_contactperson;
		public string ContactPerson {get{ return m_contactperson;} set{ m_contactperson=value; }}

		private string m_phone;
		public string Phone {get{ return m_phone;} set{ m_phone=value; }}

		private string m_fax;
		public string Fax {get{ return m_fax;} set{ m_fax=value; }}

		private string m_email;
		public string Email {get{ return m_email;} set{ m_email=value; }}

		private string m_website;
		public string WebSite {get{ return m_website;} set{ m_website=value; }}

		private Boolean? m_active;
		public Boolean? Active {get{ return m_active;} set{ m_active=value; }}

		private string m_dtsmapping;
		public string DTSMapping {get{ return m_dtsmapping;} set{ m_dtsmapping=value; }}

		private string m_casetypemapping;
		public string CaseTypeMapping {get{ return m_casetypemapping;} set{ m_casetypemapping=value; }}

		private string m_comments;
		public string Comments {get{ return m_comments;} set{ m_comments=value; }}
		#endregion
	}
}
