namespace GMConstants
{
    using System;

    public class ReportConstants
    {
        public const string RecordID = "RecordID";
        public const string FromDate = "From";
        public const string ToDate = "To";
        public const string RecordStausID = "StatusID";
    }

    public enum ReportType
    {
        RISCaseReport=1,
        RISRecord
    }
}
