namespace GMUIDetail.Security
{
	using System;
	using System.Data;
	using System.ServiceModel;
	using System.Collections.Generic;
	using System.Runtime.Serialization;

	[DataContract]
	[SerializableAttribute()]
	[GMUtilities.ClassAttrib.Handler(GMConstants.UIBinderHandlerConstants.SystemUB)]
	public class DCSystem : Base.BaseDC
	{
		#region Members

		private int? m_maxpasswordattempt;
		[DataMember]
		public int? MaxPasswordAttempt {get{ return m_maxpasswordattempt;} set{ m_maxpasswordattempt=value; }}

		private int? m_maxpassworddays;
		[DataMember]
		public int? MaxPasswordDays {get{ return m_maxpassworddays;} set{ m_maxpassworddays=value; }}
		#endregion
	}
}
