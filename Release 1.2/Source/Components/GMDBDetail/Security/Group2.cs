namespace GMDBDetail.Security
{
	using System;
	using System.Data;
	using GMDBMap.Base;
	using System.Collections.Generic;

	public class Group2Detail : Base.BaseDetail
	{
		#region Constructors
		public Group2Detail(): base(){}
		public Group2Detail(IDataReader reader, IBaseMap mapinstance) : base(reader, mapinstance) { }
		#endregion

		#region Members

		private string m_name;
		public string Name {get{ return m_name;} set{ m_name=value; }}

		private string m_description;
		public string Description {get{ return m_description;} set{ m_description=value; }}

        private string m_permissions;
        public string Permissions { get { return m_permissions; } set { m_permissions = value; } }
		#endregion
	}
}
