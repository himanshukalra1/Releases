namespace GMUIDetail.Security
{
	using System;
	using System.Data;
	using System.ServiceModel;
	using System.Collections.Generic;
	using System.Runtime.Serialization;

	[DataContract]
	[SerializableAttribute()]
	[GMUtilities.ClassAttrib.Handler(GMConstants.UIBinderHandlerConstants.User2Group2UB)]
	public class DCUser2Group2 : Base.BaseDC
	{
		#region Members

		private int? m_userid;
		[DataMember]
		public int? UserID {get{ return m_userid;} set{ m_userid=value; }}

		private int? m_groupid;
		[DataMember]
		public int? GroupID {get{ return m_groupid;} set{ m_groupid=value; }}
		#endregion
	}
}
