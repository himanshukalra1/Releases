namespace GMUIDetail.Security
{
	using System;
	using System.Data;
	using System.ServiceModel;
	using System.Collections.Generic;
	using System.Runtime.Serialization;

	[DataContract]
	[SerializableAttribute()]
	[GMUtilities.ClassAttrib.Handler(GMConstants.UIBinderHandlerConstants.Group2UB)]
	public class DCGroup2 : Base.BaseDC
	{
		#region Members

		private string m_name;
		[DataMember]
		public string Name {get{ return m_name;} set{ m_name=value; }}

		private string m_description;
		[DataMember]
		public string Description {get{ return m_description;} set{ m_description=value; }}

		private DataTable m_dsunselected;
		[DataMember]
		public DataTable DSUNSelected {get{ return m_dsunselected;} set{ m_dsunselected=value; }}

		private DataTable m_dsselected;
		[DataMember]
		public DataTable DSSelected {get{ return m_dsselected;} set{ m_dsselected=value; }}

        private string m_permissions;
        [DataMember]
        public string Permissions { get { return m_permissions; } set { m_permissions = value; } }
		#endregion
	}
}
