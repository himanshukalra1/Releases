namespace GMDBMap.Entity
{
    using System;

    public class BatchRecordMap : Base.IBaseMap
    {
        #region Procedure
        public const string ProcedureGet = "Get_Batch_Record";
        public const string ProcedureSave = "Save_Batch_Record";
        public const string ProcedureDelete = "Delete_Batch_Record";
        public const string ProcedureGetRecordPipeline = "Get_RecordPipeline";
        public const string ProcedureGetRecordSearch = "Get_RecordSearch";
        #endregion

        #region Members
        public const string ID = "ID";
        public const string BatchID = "BatchID";
        public const string CreatedDate = "CreatedDate";
        public const string ModifiedDate = "ModifiedDate";
        public const string CompanyID = "CompanyID";
        public const string RecordStatusID = "RecordStatusID";
        public const string ReceivedDate = "ReceivedDate";
        public const string SentDate = "SentDate";
        public const string PrintCost = "PrintCost";
        public const string NoOfPages = "NoOfPages";
        public const string CourtFee = "CourtFee";
        public const string CustomerRefNo = "CustomerRefNo";
        public const string LeadNo = "LeadNo";
        public const string CountyID = "CountyID";
        public const string Name = "Name";
        public const string DOB = "DOB";
        public const string ActualCaseType = "ActualCaseType";
        public const string CaseTypeID = "CaseTypeID";
        public const string Years = "Years";
        public const string SSN = "SSN";
        public const string ActionID = "ActionID";
        public const string VendorID = "VendorID";
        public const string ContactTypeID = "ContactTypeID";
        public const string ClientRemarks = "ClientRemarks";
        public const string ClientSplRemarks = "ClientSplRemarks";
        public const string RISComments = "RISComments";

        public const string PageNumber = "PageNumber ";
        public const string NumOfRows = "NumOfRows";
        public const string SortField = "SortField";
        public const string SearchData = "SearchData";
        public const string MatchCount = "MatchCount";
        public const string MatchCountCSS = "MatchCountCSS";
        public const string Flag = "Flag";
        
        #endregion
    }
}
