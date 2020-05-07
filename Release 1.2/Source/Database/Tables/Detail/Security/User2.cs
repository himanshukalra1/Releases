namespace GMDBDetail.Security
{
	using System;
	using System.Data;
	using GMDBMap.Base;
	using System.Collections.Generic;

	public class User2Detail : Base.BaseDetail
	{
		#region Constructors
		public User2Detail(): base(){}
		public User2Detail(IDataReader reader, IBaseMap mapinstance) : base(reader, mapinstance) { }
		#endregion

		#region Members

		private string m_name;
		public string Name {get{ return m_name;} set{ m_name=value; }}

		private string m_firstname;
		public string FirstName {get{ return m_firstname;} set{ m_firstname=value; }}

		private string m_lastname;
		public string LastName {get{ return m_lastname;} set{ m_lastname=value; }}

		private string m_password;
		public string Password {get{ return m_password;} set{ m_password=value; }}

		private Boolean? m_active;
		public Boolean? Active {get{ return m_active;} set{ m_active=value; }}

		private Boolean? m_lock;
		public Boolean? Lock {get{ return m_lock;} set{ m_lock=value; }}

		private int? m_parentid;
		public int? ParentID {get{ return m_parentid;} set{ m_parentid=value; }}

		private int? m_typeid;
		public int? TypeID {get{ return m_typeid;} set{ m_typeid=value; }}

		private DateTime? m_modifieddate;
		public DateTime? ModifiedDate {get{ return m_modifieddate;} set{ m_modifieddate=value; }}

		private string m_contactno;
		public string ContactNo {get{ return m_contactno;} set{ m_contactno=value; }}

		private string m_email;
		public string Email {get{ return m_email;} set{ m_email=value; }}

		private DateTime? m_lastlogon;
		public DateTime? LastLogon {get{ return m_lastlogon;} set{ m_lastlogon=value; }}

		private Boolean? m_changepassword;
		public Boolean? ChangePassword {get{ return m_changepassword;} set{ m_changepassword=value; }}

		private DateTime? m_passwordchangedate;
		public DateTime? PasswordChangeDate {get{ return m_passwordchangedate;} set{ m_passwordchangedate=value; }}

		private string m_lastpassword;
		public string LastPassword {get{ return m_lastpassword;} set{ m_lastpassword=value; }}

		private decimal? m_dailywages;
		public decimal? DailyWages {get{ return m_dailywages;} set{ m_dailywages=value; }}

		private int? m_departmentid;
		public int? DepartmentID {get{ return m_departmentid;} set{ m_departmentid=value; }}

		private List<int> m_permissions;
		public List<int> Permissions {get{ return m_permissions;} set{ m_permissions=value; }}

		private Boolean? m_ischangepasssword;
		public Boolean? IsChangePasssword {get{ return m_ischangepasssword;} set{ m_ischangepasssword=value; }}

		private string m_groups;
		public string Groups {get{ return m_groups;} set{ m_groups=value; }}
		#endregion
	}
}
