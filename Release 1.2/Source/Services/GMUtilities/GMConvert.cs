namespace GMUtilities
{
    using System;

    public static class GMConvert
    {
        #region Methods
        public static bool GetBool(dynamic value)
        {
            bool rv = false;
            bool.TryParse(GetString(value), out rv);
            return rv;
        }

        public static Int16 GetInt16(dynamic value)
        {
            Int16 rv = 0;
            Int16.TryParse(GetString(value), out rv);
            return rv;
        }

        public static Int32 GetInt32(dynamic value)
        {
            Int32 rv = 0;
            Int32.TryParse(GetString(value), out rv);
            return rv;
        }

        public static double GetDouble(dynamic value)
        {
            Double rv = 0;
            Double.TryParse(GetString(value), out rv);
            return rv;
        }

        public static decimal GetDecimal(dynamic value)
        {
            decimal rv = 0;
            decimal.TryParse(GetString(value), out rv);
            return rv;
        }

        public static string GetString(dynamic value)
        {
            return ((value==null)?string.Empty:value.ToString());
        }

        public static DateTime GetDateTime(dynamic value)
        {
            DateTime rv = DateTime.MinValue;
            DateTime.TryParse(GetString(value), out rv);
            return rv;
        }
        #endregion
    }
}
