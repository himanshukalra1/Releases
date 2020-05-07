namespace GMConstants
{
    using System;
    public class ErrorConstants
    {
        public const string NoDetailNoMap = "Instance of Detail or Map class is not been passed.";
        public const string InvalidAuthToken = "Access denied due to invalid authentication token headers.";
        public const string Passwordmatch = "The text/value entered in New password and Confirm new password field(s) should match.";
        public const string ExistingPassword = "The current password entered is in-correct. Please enter the correct one.";
        public const string ClearCache = "Session & Cache is cleared.";
        public const string ExtraExceptionMessage = "Exception has been thrown by the target of an invocation.";

        public const string UploadSuccess = "Batch Uploaded Successfully.";

        public const string CaseTypeMappingNotFound = "No Case Type mapping found for {0}.";
        public const string ExcelParseError = "Error while getting data from Excel.";
        public const string GetExcelError = "Error while getting data from Excel.";
        public const string EmptyBatchError = "There is no valid row in the batch.";
        public const string RecordSelectError = "Please select atleast one record.";
        public const string CountyMappingNotFound = "No County mapping found for {0}.";
        public const string BatchSaveFailed = "Save Failed for {0}.";
    }
}
