namespace GMUtilities
{
    using System;
    using System.Configuration;

    using GMConstants;

    public static class GMConfig
    {
        #region Properties
        public static string ConnectionString
        {
            get{return ConfigurationManager.ConnectionStrings[ConfigConstants.ConnectionString].ConnectionString;}
        }

        public static bool Logenabled
        {
            get { return GMConvert.GetBool(GetValue(ConfigConstants.Logenabled)); }
        }

        public static string UploadPath
        {
            get { return GetValue(ConfigConstants.UploadPath); }
        }

        public static Int32  PipelineCount
        {
            get { return Convert.ToInt32(GetValue(ConfigConstants.PipelineCount)); }
        }

        public static string ReportsFolder
        {
            get { return GetValue(ConfigConstants.ReportsFolder); }
        }

        public static string ReportUser
        {
            get { return GetValue(ConfigConstants.ReportUser); }
        }

        public static string ReportPwd
        {
            get { return GetValue(ConfigConstants.ReportPwd); }
        }
        #endregion

        #region Private Methods
        private static string GetValue(string key)
        {
            string value = ConfigurationManager.AppSettings[key];
            return (string.IsNullOrEmpty(value) ? string.Empty : value);
        }
        #endregion
    }
}
