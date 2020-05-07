namespace GMSecurity.Modules
{
    using System;
    using System.Web;
    using System.Collections.Specialized;

    public class ASPNETExtensions : IHttpModule
    {
        #region IHttpModule Members

        public void Init(HttpApplication context)
        {
            context.PreRequestHandlerExecute += (new EventHandler(this.PreRequestHandlerExecute));
        }

        public void Dispose() { }

        #endregion

        #region Private Functions
        private void PreRequestHandlerExecute(Object source, EventArgs e)
        {
            try{ValidateRequest(((HttpApplication)source).Context);}
            catch{throw;}
        }

        private void ValidateRequest(HttpContext context)
        {
            IsValid(context.Request.Form);
            IsValid(context.Request.QueryString);
        }

        private void IsValid(NameValueCollection collection)
        {
            string value = string.Empty;
            for (Int32 iCount = 0; iCount <= collection.Count - 1; iCount++)
            {
                value = collection[iCount].ToLower();
                if (value.IndexOf("<script") >= 0 || value.IndexOf("&lt;script;") >= 0 || value.IndexOf("</script") >= 0 ||
                    value.IndexOf("&lt;/script;") >= 0 || value.IndexOf("javascript") >= 0 || value.IndexOf("alert(") >= 0 ||
                    value.IndexOf("prompt(") >= 0 || value.IndexOf("confirm(") >= 0 || value.IndexOf("<iframe ") >= 0 || 
                    value.IndexOf("<frameset ") >= 0 || value.IndexOf("<iframe ") >= 0 ||
                    value.IndexOf("vbscript") >= 0 || value.IndexOf("msgbox(") >= 0 || value.IndexOf("<object ") >= 0 ||
                    value.IndexOf("<html ") >= 0 || value.IndexOf("href=") >= 0 || value.IndexOf("<embed ") >= 0 ||
                    value.IndexOf("<img ") >= 0 || value.IndexOf("<<layer src") >= 0 || value.IndexOf("<link rel") >= 0 ||
                    value.ToLower().IndexOf("<meta") >= 0 || value.IndexOf("stylesheet") >= 0 || value.IndexOf("<base ") >= 0 ||
                     value.IndexOf("src=") >= 0 || value.ToLower().IndexOf("<sc") >= 0 || value.ToLower().IndexOf("<?xml ") >= 0)
                {
                    throw new ApplicationException(string.Format("Potentially dangerous content found in the field :{0} of the request.", collection.GetKey(iCount)));
                }
            }
        }

        #endregion
    }
}
