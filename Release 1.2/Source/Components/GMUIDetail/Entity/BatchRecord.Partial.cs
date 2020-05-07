namespace GMUIDetail.Entity
{
	using System;
    using System.Data;
    using System.Web.UI.WebControls;

    using GMUtilities;

    public partial class DCBatchRecord : Base.BaseDC
    {
        #region Enum
        enum RecordPipeline
        {
            Select=0,
            ID=2
        }
        #endregion

        #region Constructors
        public DCBatchRecord() { }

        public DCBatchRecord(GridView gv, GridViewRow gvr):this(DataUtils.GetChecked(gvr,
            (int)RecordPipeline.Select), DataUtils.GetIDFromTitle(gvr, (int)RecordPipeline.ID, true))
        {
        }


        public DCBatchRecord(Boolean chk, int id)
        {
            if (chk)
            {
                ID = id;
            }
        }
		#endregion
    }
}
