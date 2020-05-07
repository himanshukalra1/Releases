namespace GMUIDetail.Entity
{
	using System;
	using System.Data;
	using System.ServiceModel;
	using System.Collections.Generic;
	using System.Runtime.Serialization;

	[DataContract]
	[SerializableAttribute()]
	[GMUtilities.ClassAttrib.Handler(GMConstants.UIBinderHandlerConstants.CompanyUB)]
	public class DCCompany : Base.BaseDC
	{
		#region Members

		private string m_name;
		[DataMember]
		public string Name {get{ return m_name;} set{ m_name=value; }}

		private string m_addressl1;
		[DataMember]
		public string AddressL1 {get{ return m_addressl1;} set{ m_addressl1=value; }}

		private string m_addressl2;
		[DataMember]
		public string AddressL2 {get{ return m_addressl2;} set{ m_addressl2=value; }}

		private string m_city;
		[DataMember]
		public string City {get{ return m_city;} set{ m_city=value; }}

		private int? m_stateid;
		[DataMember]
		public int? StateID {get{ return m_stateid;} set{ m_stateid=value; }}

		private string m_postalcode;
		[DataMember]
		public string PostalCode {get{ return m_postalcode;} set{ m_postalcode=value; }}

		private string m_contactperson;
		[DataMember]
		public string ContactPerson {get{ return m_contactperson;} set{ m_contactperson=value; }}

		private string m_phone;
		[DataMember]
		public string Phone {get{ return m_phone;} set{ m_phone=value; }}

		private string m_fax;
		[DataMember]
		public string Fax {get{ return m_fax;} set{ m_fax=value; }}

		private string m_email;
		[DataMember]
		public string Email {get{ return m_email;} set{ m_email=value; }}

		private string m_website;
		[DataMember]
		public string WebSite {get{ return m_website;} set{ m_website=value; }}

		private Boolean? m_active;
		[DataMember]
		public Boolean? Active {get{ return m_active;} set{ m_active=value; }}

		private string m_dtsmapping;
		[DataMember]
		public string DTSMapping {get{ return m_dtsmapping;} set{ m_dtsmapping=value; }}

		private string m_casetypemapping;
		[DataMember]
		public string CaseTypeMapping {get{ return m_casetypemapping;} set{ m_casetypemapping=value; }}

		private string m_comments;
		[DataMember]
		public string Comments {get{ return m_comments;} set{ m_comments=value; }}

        private DataTable m_dsstateid;
        [DataMember]
        public DataTable DSStateID { get { return m_dsstateid; } set { m_dsstateid = value; } }
		#endregion
	}
}
