namespace GMUtilities
{
    using System;
    using System.IO;
    using System.Data;
    using System.Text;
    using System.Collections.Generic;

    using GMConstants;

    public class EndUserException : ApplicationException
    {
        #region Constructor
        public EndUserException(string msg) : base(msg) { }

        public EndUserException(Exception ex) : base(ex.Message, ex) { }

        public EndUserException(string msg, Exception ex) : base(msg, ex) { }
        #endregion
    }

    public class Logger
    {
        #region Properties
        public static string NewLine//should be moved to higher level
        {
            get { return System.Environment.NewLine; }
        }

        private static string FileName
        {
            get {return string.Format("{0}-{1}-{2}.txt", DateTime.Today.ToString("dd-MM-yy"), DateTime.Now.Hour.ToString(), DateTime.Now.Minute.ToString()); }
        }
        #endregion

        #region Methods
        public static void LogMessage(string msgContent, params object[] values)
        {
            Log(msgContent,values);
        }

        public static void LogException(Exception exp, params object[] values)
        {
            LogException(exp, false, values);
        }

        public static void LogException(Exception exp,bool logExp, params object[] values)
        {
            if (exp is System.Threading.ThreadAbortException && !logExp) return;
            StringBuilder sbExp = new StringBuilder();
            string newLine = NewLine;
            while (exp != null)
            {
                if (IsMessageValid(exp.Message))
                {
                    sbExp.AppendFormat("Error Message : {0}{1}", exp.Message, newLine);//Make sure newline is property of some utiltiy class.
                    sbExp.AppendFormat("Source : {0}{1}", exp.Source, newLine);//Make sure newline is property of some utiltiy class.
                    sbExp.AppendFormat("Stack Trace: {0}{1}", exp.StackTrace, newLine);
                }
                exp = exp.InnerException;
            }
            Log(sbExp.ToString(),values);
            sbExp=null;
        }

        public static bool IsMessageValid(string expMsg)
        {
            return (string.Compare(expMsg, ErrorConstants.ExtraExceptionMessage, true) != 0);
        }
        #endregion

        #region Private Methods
        private static void Log(string msgContent, params object[] values)
        {
            if (!GMConfig.Logenabled) return;
            string path = System.Web.HttpContext.Current.Server.MapPath("~/Error/"),newLine = NewLine;
            if (!Directory.Exists(path))
                Directory.CreateDirectory(path);
            path = String.Format("{0}{1}",path,FileName);
            try
            {
                if (!File.Exists(path))
                    File.Create(path).Close();

                StringBuilder sb = new StringBuilder();
                sb.AppendFormat("Log Entry : {0}{1}", DateTime.Now.ToLongTimeString(),newLine);
                sb.AppendFormat("Details : {0}", newLine);
                sb.AppendFormat("{0}{1}",msgContent, newLine);
                if (values != null && values.GetLength(0)>0)
                {
                    sb.AppendFormat("Parameter values passed in: ");
                    foreach (object value in values)
                        sb.AppendFormat("{0},", value);
                    sb.Remove(sb.Length - 1, 1);
                    sb.Append(newLine);
                }
                sb.Append("--------------------------------------------------------------------------------");
                Write(path,sb.ToString());
                sb = null;
            }
            catch (Exception exp){Write(path,exp.Message);}
        }

        private static void Write(string filePath, string fileContent)
        {
            using (StreamWriter sw = File.AppendText(filePath))
            {
                sw.WriteLine(fileContent);
                sw.Flush();
                sw.Close();
            }
        }
        #endregion
    }
}
