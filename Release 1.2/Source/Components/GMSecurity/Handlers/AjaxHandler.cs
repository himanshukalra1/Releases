namespace GMSecurity.Handlers
{
    using System;
    using System.Web;
    using System.Reflection;

    using GMUtilities;
    using GMConstants;
    
    public class AjaxHandler : IHttpHandler
    {
        #region Constructor
        public AjaxHandler() { } 
        #endregion

        #region Overrides
        // Override the IsReusable property
        public bool IsReusable { get { return true; } } 
        #endregion

        #region Methods
        // Override the ProcessRequest method
        public void ProcessRequest(HttpContext context)
        {
            string ns = context.Request[QueryStringConstants.NamespaceAjax];
            if (GMConvert.GetString(ns).Length > 0) ProcessCall(ns, context);
        }
        #endregion

        #region Private Methods

        private void ProcessCall(string ns, HttpContext context)
        {
            try
            {
                Type nstype = Assembly.Load(ns.Substring(0, ns.LastIndexOf(GeneralConstants.DotOperator))).GetType(ns);
                string callmethod = context.Request.Form[QueryStringConstants.MethodAjax];
                if (callmethod == null) return;

                MethodInfo mdinfo = nstype.GetMethod(callmethod);
                if (mdinfo == null) return;

                object[] args = new object[mdinfo.GetParameters().Length];
                object param = null;
                string value = string.Empty;
                int i = 0;

                foreach (ParameterInfo pInfo in mdinfo.GetParameters())
                {
                    param = null;
                    value = context.Request.Form[string.Format("{0}{1}", QueryStringConstants.ArgumentsAjax, i)];
                    if (value != null)
                        param = Convert.ChangeType(value, pInfo.ParameterType);
                    args[i] = param;
                    ++i;
                }
                dynamic val = mdinfo.Invoke(GMReflectionUtils.GetInstance(ns), args);
                if (val != null)
                {
                    context.Response.Write(val);
                    context.Response.Flush();
                }
            }
            catch (Exception exp) { Logger.LogException(exp, ns); }
        } 
        #endregion
    }
}
