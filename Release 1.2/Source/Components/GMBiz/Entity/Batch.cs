namespace GMBiz.Entity
{
    using System;
    using System.Data;
    using System.Collections.Generic;

    using GMUtilities;
    using GMDB.Entity;
    using GMConstants;
    using GMDBMap.Entity;
    using GMDBDetail.Entity;

    public class BatchBiz : IDisposable
    {
        #region Members
        BatchDB m_db = null;
        private List<string> m_msg = new List<string>();
        private Int32 m_rowcount = 0;
        #endregion

        #region Constructors
        public BatchBiz() : base() { m_db = new BatchDB(); }
        #endregion

        #region Properties
        public List<string> Messages
        {
            get { return m_msg; }
        }

        public Int32 Rowcount
        {
            get { return m_rowcount; }
        }
        #endregion

        #region Methods
        public BatchDetail Get(Int32? ID)
        {
            return ((!ID.HasValue) ? null : m_db.Get(ID));
        }

        public DataTable GetBatchPipeline(int PageNumber, int NumOfRows, string SortField, string SearchData)
        {
            DataSet ds = m_db.GetBatchPipeline(PageNumber, NumOfRows, SortField, SearchData);
            if ((ds.Tables.Count > 1) && (ds.Tables[1].Rows.Count > 0))
                m_rowcount = Convert.ToInt32(ds.Tables[1].Rows[0][0]);
            return ds.Tables[0];
        }

        public DataTable Save(BatchDetail det, CompanyDetail companydet, string filePath, DataTable dtcounties)
        {
            Save(det);
            DataTable dtData = GetData(filePath);

            if (dtData.Rows.Count > 0)
            {
                DataTable dtDTSMapping = null;
                DataTable dtCaseTypeMapping = null;

                det.TotalCount = dtData.Rows.Count;
                det.CreatedDate = DateTime.Now;

                if (companydet.DTSMapping != null)
                    dtDTSMapping = (DataTable)XMLUtilities.Deserialize(companydet.DTSMapping, typeof(DataTable));

                if (companydet.CaseTypeMapping != null)
                    dtCaseTypeMapping = (DataTable)XMLUtilities.Deserialize(companydet.CaseTypeMapping, typeof(DataTable));

                Transform(det, ref dtData, dtDTSMapping, dtCaseTypeMapping, dtcounties);
            }
            else
            {
                throw new ApplicationException(ErrorConstants.EmptyBatchError);
            }
            return dtData;
        }

        public void Save(BatchDetail det)
        {
            m_db.Save(det);
        }

        public void Delete(Int32? ID)
        {
            m_db.Delete(ID);
        }

        public DataTable GetData(string filePath)
        {

            DataTable dt = null;
            try
            {
                if (!string.IsNullOrEmpty(filePath))
                {
                    dt = ExcelHelper.GetExcelData(filePath);
                }
                else
                    throw new ApplicationException(ErrorConstants.ExcelParseError);
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ErrorConstants.ExcelParseError);
            }

            return dt;
        }
        #endregion

        #region Private Methods
        private void Transform(BatchDetail det, ref DataTable dtData, DataTable dtDTSMapping, DataTable dtCaseTypeMapping, DataTable dtcounties)
        {
            TransformColumn(ref dtData, dtDTSMapping);
            TransformData(ref dtData, dtCaseTypeMapping, dtcounties);
        }

        private void TransformData(ref DataTable dtData, DataTable dtCaseTypeMapping, DataTable dtcounties)
        {
            dtData.Columns.Add(BatchUploadConstants.CaseTypeID);
            dtData.Columns.Add(BatchUploadConstants.CountyID);
            string casetype = string.Empty;
            string county = string.Empty;
            DataRow[] drs;

            foreach (DataRow dr in dtData.Rows)
            {
                // CaseType Transformation
                casetype = DataUtils.GetColumnValue(dr, BatchUploadConstants.ActualCaseType);
                if (dtCaseTypeMapping != null)
                {
                    drs = dtCaseTypeMapping.Select(BatchUploadConstants.CaseTypeColumnKeyName + "='" + casetype + "'");
                    if (drs.Length > 0)
                        casetype = DataUtils.GetColumnValue(drs[0], BatchUploadConstants.CaseTypeColumnValueName);
                }
                dr[BatchUploadConstants.CaseTypeID] = GetCaseType(casetype);

                // County Transformation
                county = DataUtils.GetColumnValue(dr, BatchUploadConstants.County).ToString();
                drs = dtcounties.Select(GMDBMap.Options.ContactTypeMap.Name + "='" + county + "'");
                if (drs.Length == 0)
                    m_msg.Add(string.Format(ErrorConstants.CountyMappingNotFound, county));
                else
                    dr[BatchUploadConstants.CountyID] = drs[0][GMDBMap.Options.ContactTypeMap.ID];
            }
            dtData.AcceptChanges();
        }

        private Int32? GetCaseType(string strcaseTypeValue)
        {
            Int32? rv = null;
            try
            {
                rv = Convert.ToInt32(Enum.Parse(typeof(BatchUploadConstants.EnumCaseType), strcaseTypeValue));
            }
            catch
            {
                m_msg.Add(string.Format(ErrorConstants.CaseTypeMappingNotFound, strcaseTypeValue));
            }
            return rv;
        }

        private void TransformColumn(ref DataTable dtData, DataTable dtDTSMapping)
        {
            if (dtDTSMapping != null && dtDTSMapping.Rows.Count > 0)
            {
                string strCoumnName;
                foreach (DataColumn dc in dtDTSMapping.Columns)
                {
                    strCoumnName = dtDTSMapping.Rows[0][dc].ToString();
                    if (dtData.Columns.Contains(strCoumnName))
                    {
                        dtData.Columns[strCoumnName].ColumnName = dc.ColumnName;
                    }
                }
            }

            dtData.AcceptChanges();
        }
        #endregion

        #region Dispose
        public void Dispose() { m_db.Dispose(); }
        #endregion
    }
}
