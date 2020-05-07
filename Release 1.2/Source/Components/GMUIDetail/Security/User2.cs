namespace GMUIDetail.Security
{
	using System;
	using System.Data;
	using System.ServiceModel;
	using System.Collections.Generic;
	using System.Runtime.Serialization;

	[DataContract]
	[SerializableAttribute()]
	[GMUtilities.ClassAttrib.Handler(GMConstants.UIBinderHandlerConstants.User2UB)]
	public class DCUser2 : Base.BaseDC
	{
		#region Members

		private string m_name;
		[DataMember]
		public string Name {get{ return m_name;} set{ m_name=value; }}

		private string m_firstname;
		[DataMember]
		public string FirstName {get{ return m_firstname;} set{ m_firstname=value; }}

		private string m_lastname;
		[DataMember]
		public string LastName {get{ return m_lastname;} set{ m_lastname=value; }}

		private string m_password;
		[DataMember]
		public string Password {get{ return m_password;} set{ m_password=value; }}

		private Boolean? m_active;
		[DataMember]
		public Boolean? Active {get{ return m_active;} set{ m_active=value; }}

		private Boolean? m_lock;
		[DataMember]
		public Boolean? Lock {get{ return m_lock;} set{ m_lock=value; }}

		private int? m_parentid;
		[DataMember]
		public int? ParentID {get{ return m_parentid;} set{ m_parentid=value; }}

		private int? m_typeid;
		[DataMember]
		public int? TypeID {get{ return m_typeid;} set{ m_typeid=value; }}

		private DateTime? m_modifieddate;
		[DataMember]
		public DateTime? ModifiedDate {get{ return m_modifieddate;} set{ m_modifieddate=value; }}

		private string m_contactno;
		[DataMember]
		public string ContactNo {get{ return m_contactno;} set{ m_contactno=value; }}

		private string m_email;
		[DataMember]
		public string Email {get{ return m_email;} set{ m_email=value; }}

		private DateTime? m_lastlogon;
		[DataMember]
		public DateTime? LastLogon {get{ return m_lastlogon;} set{ m_lastlogon=value; }}

		private Boolean? m_changepassword;
		[DataMember]
		public Boolean? ChangePassword {get{ return m_changepassword;} set{ m_changepassword=value; }}

		private DateTime? m_passwordchangedate;
		[DataMember]
		public DateTime? PasswordChangeDate {get{ return m_passwordchangedate;} set{ m_passwordchangedate=value; }}

		private string m_lastpassword;
		[DataMember]
		public string LastPassword {get{ return m_lastpassword;} set{ m_lastpassword=value; }}

		private decimal? m_dailywages;
		[DataMember]
		public decimal? DailyWages {get{ return m_dailywages;} set{ m_dailywages=value; }}

		private int? m_departmentid;
		[DataMember]
		public int? DepartmentID {get{ return m_departmentid;} set{ m_departmentid=value; }}

		private List<int> m_permissions;
		[DataMember]
		public List<int> Permissions {get{ return m_permissions;} set{ m_permissions=value; }}

		private DataTable m_dsunselected;
		[DataMember]
		public DataTable DSUNSelected {get{ return m_dsunselected;} set{ m_dsunselected=value; }}

		private DataTable m_dsselected;
		[DataMember]
		public DataTable DSSelected {get{ return m_dsselected;} set{ m_dsselected=value; }}

		private DataTable m_dstypeid;
		[DataMember]
		public DataTable DSTypeID {get{ return m_dstypeid;} set{ m_dstypeid=value; }}

		private DataTable m_dsdepartmentid;
		[DataMember]
		public DataTable DSDepartmentID {get{ return m_dsdepartmentid;} set{ m_dsdepartmentid=value; }}

		private Boolean? m_ispasswordchangedmanual;
		[DataMember]
		public Boolean? IsPasswordChangedManual {get{ return m_ispasswordchangedmanual;} set{ m_ispasswordchangedmanual=value; }}

        private string m_groups;
        [DataMember]
        public string Groups { get { return m_groups; } set { m_groups = value; } }
		#endregion
	}
}
