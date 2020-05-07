namespace GMUtilities.Security
{
    using System;
    using System.IO;
    using System.Text;
    using System.Diagnostics;
    using System.Security.Cryptography;

    using GMConstants;

    public class CryptoUtils
    {
        #region Members
        private static byte[] KEY_192 = { 42, 16, 93, 156, 78, 4, 218, 32, 15, 167, 44, 80, 26, 250, 155, 112, 2, 94, 11, 204, 119, 35, 184, 197 };
        private static byte[] IV_192 = { 55, 103, 246, 79, 36, 99, 167, 3, 42, 5, 62, 83, 184, 7, 209, 13, 145, 23, 200, 58, 173, 10, 121, 222 };
        #endregion

        #region Methods
        public static string EncryptTripleDES(string value)
        {
            string rv = string.Empty;
            if (!string.IsNullOrEmpty(value))
            {
                TripleDESCryptoServiceProvider tdcsp = new TripleDESCryptoServiceProvider();
                MemoryStream ms = new MemoryStream();
                CryptoStream cs = new CryptoStream(ms, tdcsp.CreateEncryptor(KEY_192, IV_192), CryptoStreamMode.Write);
                StreamWriter sw = new StreamWriter(cs);
                try
                {
                    sw.Write(value);
                    sw.Flush();
                    cs.FlushFinalBlock();
                    ms.Flush();
                    rv = Convert.ToBase64String(ms.GetBuffer(), 0, (int)ms.Length);
                }
                catch (Exception exp)
                {
                    throw exp;
                }
                finally
                {
                    tdcsp = null;
                    sw.Dispose();
                    cs.Dispose();
                    ms.Dispose();
                }
            }
            return rv;
        }

        public static string DecryptTripleDES(string value)
        {
            string rv = string.Empty;
            if (!string.IsNullOrEmpty(value))
            {
                TripleDESCryptoServiceProvider tdcsp = new TripleDESCryptoServiceProvider();
                byte[] data = Convert.FromBase64String(value);
                MemoryStream ms = new MemoryStream(data);
                CryptoStream cs = new CryptoStream(ms, tdcsp.CreateDecryptor(KEY_192, IV_192), CryptoStreamMode.Read);
                StreamReader sr = new StreamReader(cs);
                try
                {
                    rv = sr.ReadToEnd();
                }
                catch (Exception exp)
                {
                    throw exp;
                }
                finally
                {
                    tdcsp = null;
                    sr.Dispose();
                    cs.Dispose();
                    ms.Dispose();
                }
            }
            return rv;
        }

        public static string EncryptSHA(string value)
        {
            return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(value, GeneralConstants.EncPassword);
        }
        #endregion
    }
}
