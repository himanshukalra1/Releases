namespace GMDBDetail.Entity
{
	using System;
	using System.Data;
	using GMDBMap.Base;
	using System.Collections.Generic;

	public class VendorCountyRateDetail : Base.BaseDetail
	{
		#region Constructors
		public VendorCountyRateDetail(): base(){}
		public VendorCountyRateDetail(IDataReader reader, IBaseMap mapinstance) : base(reader, mapinstance) { }
		#endregion

		#region Members

		private int? m_vendorid;
		public int? VendorID {get{ return m_vendorid;} set{ m_vendorid=value; }}

		private int? m_countyid;
		public int? CountyID {get{ return m_countyid;} set{ m_countyid=value; }}

		private decimal? m_rate;
		public decimal? Rate {get{ return m_rate;} set{ m_rate=value; }}
		#endregion
	}
}
