namespace GMUIDetail.Security
{
	using System;
	using System.Data;
	using System.ServiceModel;
	using System.Collections.Generic;
	using System.Runtime.Serialization;

	[DataContract]
	[SerializableAttribute()]
	[GMUtilities.ClassAttrib.Handler(GMConstants.UIBinderHandlerConstants.EmployeeHierarchyUB)]
	public class DCEmployeeHierarchy : Base.BaseDC
	{
		#region Members

		private int? m_sourceid;
		[DataMember]
		public int? SourceID {get{ return m_sourceid;} set{ m_sourceid=value; }}

		private int? m_targetid;
		[DataMember]
		public int? TargetID {get{ return m_targetid;} set{ m_targetid=value; }}
		#endregion
	}
}
