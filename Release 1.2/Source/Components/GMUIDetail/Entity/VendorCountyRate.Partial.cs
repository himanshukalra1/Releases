namespace GMUIDetail.Entity
{
	using System;
    using System.Data;
    using System.Web.UI.WebControls;

    using GMUtilities;
	
	public partial class DCVendorCountyRate : Base.BaseDC
    {
        #region Enum
        enum CountyRate
        {
            CountyID=0,
            Rate=1,
            ID=3
        }
        #endregion

        #region Constructors
        public DCVendorCountyRate() { }

        public DCVendorCountyRate(GridView gv, GridViewRow gvr):this(GMConvert.GetInt32(gv.DataKeys[gvr.RowIndex].Value), DataUtils.GetID(gvr, 
            (int)CountyRate.CountyID), GMConvert.GetDecimal(DataUtils.GetText(gvr,(int)CountyRate.Rate))){}

        public DCVendorCountyRate(DataRow dr):this(GMConvert.GetInt32(dr[CountyRate.ID.ToString()]),
            GMConvert.GetInt32(dr[CountyRate.CountyID.ToString()]), GMConvert.GetDecimal(dr[CountyRate.Rate.ToString()]))
        {
        }

        public DCVendorCountyRate(int id, int countyid, decimal rate)
        {
            ID = id;
            CountyID = countyid;
            Rate = rate;
        }
		#endregion
    }
}
