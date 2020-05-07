namespace GMDBDetail.Entity
{
	using System;
	using System.Data;
	using GMDBMap.Base;
	using System.Collections.Generic;

	public class VendorDetail : Base.BaseDetail
	{
		#region Constructors
		public VendorDetail(): base(){}
		public VendorDetail(IDataReader reader, IBaseMap mapinstance) : base(reader, mapinstance) { }
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

		private string m_comments;
		public string Comments {get{ return m_comments;} set{ m_comments=value; }}

		private string m_contactperson;
		public string ContactPerson {get{ return m_contactperson;} set{ m_contactperson=value; }}

		private string m_phone;
		public string Phone {get{ return m_phone;} set{ m_phone=value; }}

		private string m_fax;
		public string Fax {get{ return m_fax;} set{ m_fax=value; }}

		private string m_email;
		public string Email {get{ return m_email;} set{ m_email=value; }}

		private Boolean? m_active;
		public Boolean? Active {get{ return m_active;} set{ m_active=value; }}

		private int? m_graceperiod;
		public int? GracePeriod {get{ return m_graceperiod;} set{ m_graceperiod=value; }}

		private int? m_paymentid;
		public int? PaymentID {get{ return m_paymentid;} set{ m_paymentid=value; }}
		#endregion
	}
}
