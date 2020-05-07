using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.OleDb;
using GMConstants;


namespace GMUtilities
{
    public static class ExcelHelper
    {
        public static DataTable GetExcelData(string filepath)
        {
            DataTable dt = null;
            OleDbConnection db = new OleDbConnection(String.Format(GeneralConstants.ExcelOleDbConnection, filepath));
            try
            {
                db.Open();
                DataTable dt2 = db.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
                if (dt2 != null && dt2.Rows.Count > 0)
                {
                    string sheetname = dt2.Rows[0]["TABLE_NAME"].ToString();
                    OleDbDataAdapter da = new OleDbDataAdapter(String.Format("SELECT * FROM [{0}]", sheetname), db);
                    dt = new DataTable(sheetname);
                    da.Fill(dt);
                    dt = CreateTableFromExcel(dt, sheetname);
                    da.Dispose();
                }
            }
            catch (Exception ex)
            {
                Logger.LogException(ex);
                throw new ApplicationException(ErrorConstants.ExcelParseError);
            }
            finally
            {
                db.Close();
                db.Dispose();
            }
            return dt;
        }

        internal static DataTable CreateTableFromExcel(DataTable dtip, string sheetname)
        {
            sheetname = sheetname.Replace("$", string.Empty);
            DataTable dt = new DataTable(sheetname);
            if (dtip != null && dtip.Rows.Count > 0)
            {
                int i = 0;
                int j = dtip.Columns.Count;
                foreach (DataRow dr in dtip.Rows)
                {
                    i = i + 1;
                    if (i == 1)
                        for (int x = 0; x < j; x++)
                            dt.Columns.Add(dr[x].ToString());
                    else
                    {
                        DataRow drTemp = dt.NewRow();
                        for (int y = 0; y < j; y++)
                            drTemp[y] = dr[y];
                        dt.Rows.Add(drTemp);
                    }
                }
                dt.AcceptChanges();
                dtip.Dispose();
            }
            return dt;
        }
    }
}
