namespace GMUIDetail.Entity
{
	using System;
	using System.Data;
	using System.ServiceModel;
	using System.Collections.Generic;
	using System.Runtime.Serialization;

	public partial class DCRecordHistory : Base.BaseDC
    {
        #region Enum
        enum Columns
        {
            Status,
            By,
            CreatedDate
        }
        #endregion

        #region Constructor
        public DCRecordHistory(DataRow dr)
        {
            By = dr[Columns.By.ToString()].ToString();
            CreatedDate = GMUtilities.GMConvert.GetDateTime(dr[Columns.CreatedDate.ToString()]);
            Status = dr[Columns.Status.ToString()].ToString();
        }
		#endregion
	}
}
