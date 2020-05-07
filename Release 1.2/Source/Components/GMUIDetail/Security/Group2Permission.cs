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
	public class DCGroup2Permission : Base.BaseDC
	{
		#region Members

		private int? m_groupid;
		[DataMember]
		public int? GroupID {get{ return m_groupid;} set{ m_groupid=value; }}

		private int? m_permissionid;
		[DataMember]
		public int? PermissionID {get{ return m_permissionid;} set{ m_permissionid=value; }}
		#endregion
	}
}
