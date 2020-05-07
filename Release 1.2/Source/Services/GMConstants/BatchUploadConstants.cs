namespace GMConstants
{
    using System;

    public class BatchUploadConstants
    {
        public const string CaseTypeColumnKeyName = "CaseTypeName";
        public const string CaseTypeColumnValueName = "CaseTypeValue";
        public const string ActualCaseType = "CaseType";
        public const string CaseTypeID = "CaseTypeID"; //Added to the Dataset

        public const string ReceivedDate = "ReceivedDate";
        public const string ReceivedTime = "ReceivedTime";
        public const string CustomerRefNo = "CustomerRefNo";
        public const string LeadNumber = "LeadNumber";
        public const string County = "County";
        public const string CountyID = "CountyID";
        public const string Name = "Name";
        public const string DOB = "DOB";
        public const string CaseType = "CaseType";
        public const string Years = "Years";
        public const string SSN = "SSN";
        public const string ClientRemarks = "ClientRemarks";
        public const string ClientSplRemarks = "ClientSplRemarks";


        public enum EnumCaseType
        {
            CERTCOPY = 1,
            CIVIL = 2,
            CIVILCASECOPIES = 3,
            CIVILCERTCOPY = 4,
            CIVILDOCKETPRNT = 5,
            CIVLOW = 6,
            CIVUP = 7,
            CRIM = 8,
            CRIMCASECOPIES = 9,
            CRIMCERTCOPY = 10,
            CRIMDOCKETPRNT = 11,
            CVRO = 12,
            CVRO10 = 13,
            FamLaw = 14,
            FEDCIVIL = 15,
            FEDCRM = 16,
            FELONY = 17,
            MSDM = 18

        }

        public enum EnumRecordStatusType
        {
            RESEARCH = 1,
            DISPO = 2,
            QA = 3,
            SUBMIT = 4,
            ARCHIVE = 5,
            CANCEL = 6
        }
    }


}
