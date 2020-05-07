namespace GMUIDetail.Entity
{
	using System;
	using System.Data;
	using System.ServiceModel;
	using System.Collections.Generic;
	using System.Runtime.Serialization;

	[DataContract]
	[SerializableAttribute()]
	[GMUtilities.ClassAttrib.Handler(GMConstants.UIBinderHandlerConstants.VendorCountyRateUB)]
	public class DCVendorCountyRate : Base.BaseDC
	{
		#region Members

		private int? m_vendorid;
		[DataMember]
		public int? VendorID {get{ return m_vendorid;} set{ m_vendorid=value; }}

		private int? m_countyid;
		[DataMember]
		public int? CountyID {get{ return m_countyid;} set{ m_countyid=value; }}

		private decimal? m_rate;
		[DataMember]
		public decimal? Rate {get{ return m_rate;} set{ m_rate=value; }}

		private DataTable m_dscountyid;
		[DataMember]
		public DataTable DSCountyID {get{ return m_dscountyid;} set{ m_dscountyid=value; }}
		#endregion
	}
}
