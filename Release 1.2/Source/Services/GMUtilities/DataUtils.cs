namespace GMUtilities
{
    using System;
    using System.Data;
    using System.Web.UI;
    using System.Collections.Generic;
    using System.Web.UI.WebControls;

    using GMConstants;

    public class DataUtils
    {
        #region Methods
        public static DataTable DetachSelection(DataTable src, List<Int32> lstid)
        {
            DataTable dest = src.Clone();
            DataRow dr = null;
            for (Int32 ix = src.Rows.Count - 1; ix >= 0; ix--)
            {
                dr = src.Rows[ix];
                foreach (Int32 ID in lstid)
                {
                    if (string.Compare(dr[OptionsMap.Value].ToString(), ID.ToString(), true) == 0)
                    {
                        dest.ImportRow(dr);
                        dr.Delete();
                        lstid.Remove(ID);
                        break;
                    }
                }
            }
            dest.AcceptChanges();
            src.AcceptChanges();
            return dest;
        }

        public static string GetText(GridViewRow gvr, int index)
        {
            dynamic tc = gvr.Cells[index].Controls[1];
            return IsEdit(gvr) ? tc.Value : tc.Text;
        }

        public static Boolean GetChecked(GridViewRow gvr, int index)
        {
            dynamic tc = gvr.Cells[index].Controls[1];
            return tc.Checked;
        }

        public static int GetID(GridViewRow gvr, int index)
        {
            dynamic tc = gvr.Cells[index].Controls[1];
            return GMConvert.GetInt32(IsEdit(gvr) ? tc.Value : tc.Value);
        }

        public static int GetIDFromTitle(GridViewRow gvr, int index, bool ishyperlink)
        {
            dynamic tc = gvr.Cells[index].Controls[1];
            return GMConvert.GetInt32(tc.Title);
        }

        public static dynamic GetDataSource(GridViewRow gvr, int index)
        {
            dynamic tc = gvr.Cells[index].Controls[1];
            return tc.DataSource;
        }

        public static string GetColumnValue(DataRow dr, string colName)
        {
            string strValue = string.Empty;
            if (!dr.Table.Columns.Contains(colName))
            {

            }
            else if (dr[colName] != null)
                strValue = dr[colName].ToString();
            return strValue;
        }

        public static void SetVisible(GridView gv, int index, bool visible)
        {
            if (gv.Columns.Count > index)
                gv.Columns[index].Visible = visible;
        }
        #endregion

        #region Private Methods
        static bool IsEdit(GridViewRow gvr)
        {
            return ((gvr.RowState & DataControlRowState.Edit)== DataControlRowState.Edit);
        }
        #endregion
    }
}
