namespace GMWebUtilities
{
    #region using
    using System;
    using System.Web;
    using System.Web.Security;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using System.Web.UI.HtmlControls;
    using GMConstants;
    using System.IO;
    using System.Text;
    #endregion

    public class BaseGMUC:UserControl
    {
        #region Members
        private string m_ctlsfolder = string.Empty;
        private string m_scriptfolder = string.Empty;
        #endregion

        #region Properties
        public string ControlsFolder
        {
            get { return m_ctlsfolder; }
        }

        public string ScriptsFolder
        {
            get { return m_scriptfolder; }
        }

        public string HTMLString
        {
            get {
                StringBuilder sb = new StringBuilder();
                using (StringWriter sw = new StringWriter(sb))
                {
                    using (HtmlTextWriter htw = new HtmlTextWriter(sw))
                        this.RenderControl(htw);
                }
                string rv = sb.ToString();
                sb.Remove(0, rv.Length);        
                return rv;
            }
        }
        #endregion

        #region Protected
        protected void RenderClientScript(string keyname, string scriptcontent)
        {
            if (!this.Page.ClientScript.IsClientScriptBlockRegistered(keyname))
                this.Page.ClientScript.RegisterClientScriptBlock(typeof(string), keyname, scriptcontent);
        }

        protected void RenderStartupScript(string keyname, string scriptcontent)
        {
            if (!this.Page.ClientScript.IsStartupScriptRegistered(keyname))
                this.Page.ClientScript.RegisterStartupScript(typeof(string), keyname, scriptcontent, true);
        }

        protected void RenderScriptSource(string keyname, string scriptcontent)
        {
            if (!this.Page.ClientScript.IsClientScriptIncludeRegistered(keyname))
                this.Page.ClientScript.RegisterClientScriptInclude(typeof(string), keyname, scriptcontent);
        }

        protected void RenderJQUERY()
        {
            RenderScriptSource(UCConstants.JqueryMin, string.Format("{0}jquery/{1}.js", ControlsFolder, UCConstants.JqueryMin));
            RenderScriptSource(UCConstants.JqueryUICustomMin, string.Format("{0}jquery/{1}.js", ControlsFolder, UCConstants.JqueryUICustomMin));
        }
        #endregion

        #region Events
        protected virtual void Page_Init(object sender, EventArgs e)
        {
            m_ctlsfolder = string.Format("{0}/Script/", this.Page.Request.ApplicationPath);
            m_scriptfolder = string.Format("{0}/Theme/", this.Page.Request.ApplicationPath);
        }

        protected virtual void Page_Load(object sender, EventArgs e)
        {
            RenderClientScript(UCConstants.Stylesheet, string.Format(UCConstants.SSScript, string.Format("{0}{1}", ScriptsFolder, string.Format("{0}.css",UCConstants.Stylesheet))));
            RenderClientScript(UCConstants.JqueryUICustomCss, string.Format(UCConstants.SSScript, string.Format("{0}/jquery/{1}", ScriptsFolder, string.Format("{0}.css", UCConstants.JqueryUICustomCss))));
        }
        #endregion
    }
}
