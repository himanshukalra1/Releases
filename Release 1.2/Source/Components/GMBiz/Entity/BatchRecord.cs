namespace GMBiz.Entity
{
    using System;
    using System.Data;
    using System.Collections.Generic;

    using GMDBMap.Entity;
    using GMDBDetail.Entity;
    using GMDB.Entity;
    using GMUtilities;
    using GMConstants;

    public class BatchRecordBiz : IDisposable
    {
        #region Members
        BatchRecordDB m_db = null;
        public Int32 m_RowCount = 0;
        RecordHistoryBiz m_rhbiz = null;
        private List<string> m_msg = new List<string>();
        #endregion

        public List<string> Messages
        {
            get { return m_msg; }
        }


        #region Constructors
        public BatchRecordBiz() : base() { m_db = new BatchRecordDB(); m_rhbiz = new RecordHistoryBiz(); }
        #endregion

        #region Methods
        public BatchRecordDetail Get(Int32? ID)
        {
            return ((!ID.HasValue) ? null : m_db.Get(ID));
        }

        public void Save(BatchRecordDetail det)
        {
            if (det.ID.HasValue) det.ModifiedDate = DateTime.Now;
            else det.CreatedDate = DateTime.Now;
            if (!det.DOB.HasValue) det.DOB = new DateTime(1900, 01, 01);
            m_db.Save(det);
        }
        
        public void Save(DataTable dt, BatchDetail batchDet, string sessionid)
        {
            BatchRecordDetail det;
            string strDate, strTime;
            int iPass = 0, iFail = 0, iBlank = 0, iType = 0;

            foreach (DataRow dr in dt.Rows)
            {
                det = new BatchRecordDetail();
                try
                {
                    if (DataUtils.GetColumnValue(dr, BatchUploadConstants.Name).Length > 0)
                    {
                        det.BatchID = batchDet.ID;
                        det.CompanyID = batchDet.CompanyID;
                        strDate = DataUtils.GetColumnValue(dr, BatchUploadConstants.ReceivedDate);
                        strTime = DataUtils.GetColumnValue(dr, BatchUploadConstants.ReceivedTime);
                        det.ReceivedDate = Convert.ToDateTime(strDate);
                        det.CustomerRefNo = DataUtils.GetColumnValue(dr, BatchUploadConstants.CustomerRefNo);
                        det.LeadNo = GMConvert.GetInt32(DataUtils.GetColumnValue(dr, BatchUploadConstants.LeadNumber));
                        det.CountyID = GMConvert.GetInt32(DataUtils.GetColumnValue(dr, BatchUploadConstants.CountyID));
                        det.Name = DataUtils.GetColumnValue(dr, BatchUploadConstants.Name);
                        det.DOB = Convert.ToDateTime(DataUtils.GetColumnValue(dr, BatchUploadConstants.DOB));
                        iType = GMConvert.GetInt32(DataUtils.GetColumnValue(dr, BatchUploadConstants.CaseTypeID));
                        if (iType > 0)
                            det.CaseTypeID = iType;
                        det.RecordStatusID = Convert.ToInt32(BatchUploadConstants.EnumRecordStatusType.RESEARCH);
                        det.Years = GMConvert.GetInt32(DataUtils.GetColumnValue(dr, BatchUploadConstants.Years));
                        det.SSN = DataUtils.GetColumnValue(dr, BatchUploadConstants.SSN);
                        det.ClientRemarks = DataUtils.GetColumnValue(dr, BatchUploadConstants.ClientRemarks);
                        det.ClientSplRemarks = DataUtils.GetColumnValue(dr, BatchUploadConstants.ClientSplRemarks);
                        det.ActualCaseType = DataUtils.GetColumnValue(dr, BatchUploadConstants.ActualCaseType);
                        Save(det);
                        SaveRecordHistory(det.ID, det.RecordStatusID, batchDet.UserID);
                        iPass += 1;
                    }
                    else
                    {
                        iBlank += 1;
                    }
                }
                catch(Exception ex)
                {
                    iFail += 1;
                    m_msg.Add(string.Format(ErrorConstants.BatchSaveFailed, det.Name));
                    Logger.LogException(ex);
                }
            }
            batchDet.FailCount = iFail;
            batchDet.PassCount = iPass;
            batchDet.TotalCount = dt.Rows.Count - iBlank;
        }

        public void SaveRecordHistory(int? recordid, int? statusid, int? userid)
        {
            m_rhbiz.Save(new RecordHistoryDetail(recordid.Value, statusid.Value, userid.Value));
        }

        public void Delete(Int32? ID)
        {
            m_db.Delete(ID);
        }

        public DataTable GetRecordPipeline(int PageNumber, int NumOfRows, string SortField, string SearchData)
        {
            DataSet ds = m_db.GetRecordPipeline(PageNumber, NumOfRows, SortField, SearchData);
            if (ds.Tables.Count > 0)
            {
                RecordCaseBiz m_rcbiz = new RecordCaseBiz();
                DataTable dt, dtHit;
                int i, iHit;
                ds.Tables[0].Columns.Add(BatchRecordMap.MatchCount);
                ds.Tables[0].Columns.Add(BatchRecordMap.MatchCountCSS);
                ds.Tables[0].Columns.Add(BatchRecordMap.Flag);

                string strMC = string.Empty, strCSS = string.Empty, strFlag = string.Empty;
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    i = 0; iHit = 0;
                    strMC = string.Empty; strCSS = string.Empty; strFlag = string.Empty;

                    dt = m_db.GetRecordSearch(Convert.ToInt32(dr[BatchRecordMap.ID]));
                    if (dt != null)
                    {
                        foreach (DataRow dr1 in dt.Rows)
                        {
                            dtHit = m_rcbiz.GetDatatble(Convert.ToInt32(dr1[BatchRecordMap.ID]));
                            if (dtHit != null && dtHit.Rows.Count > iHit)
                                iHit = dtHit.Rows.Count;
                        }
                        i = dt.Rows.Count;
                    }
                    if (iHit > 0)
                    {
                        strMC = iHit.ToString() + " Hit(s) Found";
                        strCSS = "hit";
                    }
                    else if (i > 0)
                    {
                        strMC = i.ToString() + " Match(s) Found";
                        strCSS = "match";
                    }
                    else
                        strMC = "No Record Found";

                    DateTime dtm = DateTime.MinValue;
                    if (!Convert.IsDBNull(dr[BatchRecordMap.ReceivedDate]))
                        dtm = Convert.ToDateTime(dr[BatchRecordMap.ReceivedDate]);


                    if (DateTime.Now.Subtract(dtm).TotalHours > 72)
                        strFlag = "Black";
                    else if (DateTime.Now.Subtract(dtm).TotalHours > 48)
                        strFlag = "Red";
                    else if (DateTime.Now.Subtract(dtm).TotalHours > 24)
                        strFlag = "Yellow";
                    else
                        strFlag = "Blue";


                    dr[BatchRecordMap.MatchCount] = strMC;
                    dr[BatchRecordMap.MatchCountCSS] = strCSS;
                    dr[BatchRecordMap.Flag] = strFlag;
                }
                ds.AcceptChanges();
            }
            if ((ds.Tables.Count > 1) && (ds.Tables[1].Rows.Count > 0))
                m_RowCount = Convert.ToInt32(ds.Tables[1].Rows[0][0]);
            return ds.Tables[0];
        }

        public DataTable GetRecordSearchData(int? RecordID)
        {

            DataTable dt;
            dt = m_db.GetRecordSearch(RecordID);
            //m_RowCount = dt.Rows.Count;
            return dt;
        }

        #endregion

        #region Dispose
        public void Dispose() { m_db.Dispose(); }
        #endregion
    }
}
