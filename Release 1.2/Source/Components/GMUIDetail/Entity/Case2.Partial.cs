namespace GMUIDetail.Entity
{
	using System;
    using System.Data;
    using System.Web.UI.WebControls;

    using GMUtilities;

	public partial class DCCase2 : Base.BaseDC
	{
		#region Enum
        enum Case2Record
        {
            ID = 0,
            Description=1,
            LevelTypeID=2,
            PleaTypeID=3,
            DispositionTypeID = 4
        }
        #endregion

        #region Constructors
        public DCCase2() { }

        public DCCase2(GridView gv, GridViewRow gvr)
            : this(GMConvert.GetInt32(gv.DataKeys[gvr.RowIndex].Value), DataUtils.GetText(gvr, (int)Case2Record.Description) , DataUtils.GetID(gvr, (int)Case2Record.LevelTypeID),
            DataUtils.GetID(gvr, (int)Case2Record.PleaTypeID), DataUtils.GetID(gvr, (int)Case2Record.DispositionTypeID))
        {
        }

        public DCCase2(DataRow dr)
            : this(GMConvert.GetInt32(dr[Case2Record.ID.ToString()]), dr[Case2Record.Description.ToString()].ToString(), GMConvert.GetInt32(dr[Case2Record.LevelTypeID.ToString()]),
            GMConvert.GetInt32(dr[Case2Record.PleaTypeID.ToString()]), GMConvert.GetInt32(dr[Case2Record.DispositionTypeID.ToString()]))
        {
        }

        public DCCase2(int id, string description, int leveltypeid, int pleatypeid, int distypeid)
        {
            ID = id;
            Description = description;
            LevelTypeID = leveltypeid;
            PleaTypeID = pleatypeid;
            DispositionTypeID = distypeid;
        }
		#endregion
    }
}
