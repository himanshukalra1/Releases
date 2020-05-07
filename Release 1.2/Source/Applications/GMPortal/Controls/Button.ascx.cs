namespace GMPortal.Controls
{
    using System;
    using System.Web;
	using System.Web.UI.HtmlControls;
    using System.Web.UI.WebControls;
    using System.Web.UI.WebControls.WebParts;
    
    using GMUtilities;	
    using GMConstants;
    using GMWebUtilities;

    public partial class Button : BaseGMUC
    {
        #region Members
        private bool m_bcausesvalidation = true; 
        #endregion

        #region Properties
        public string Text
        {
            set { ucButton.Text = value; }
        }

        public bool CausesValidation
        {
            set { m_bcausesvalidation = value; }
        }

        public bool Enabled
        {
            get { return ucButton.Enabled; }
            set { ucButton.Enabled = value; }
        }

        public Int32 Width
        {
            set { ucButton.Width = value; }
        }

        public System.Web.UI.WebControls.Button Instance
        {
            get { return ucButton; }
        }

        private string m_clientclickscript= string.Empty;
        public string OnClientClick
        {
            set {m_clientclickscript= value;}
        }
        #endregion

        #region Public Events
        public delegate void OnButtonClick(object sender, EventArgs e);

        public event OnButtonClick Click;
        protected virtual void OnBtnClick(object sender, EventArgs e)
        {
            try
            {
                if (Click != null)
                    Click(this, e);
            }
            catch (Exception exp){GMUtilities.GMReflectionUtils.InvokeMember(this.Page, GMConstants.ReflectionConstants.MasterDisplayError, new object[] { exp },EnumConstants.InvokeMethod);}
        }
        #endregion

        #region Events
        protected override void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        private void InitializeComponent() { this.Load += new EventHandler(Page_Load); this.Init += new EventHandler(Page_Init); }

        protected override void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);
        }

        protected override void OnPreRender(EventArgs e)
        {
            ucButton.CausesValidation = m_bcausesvalidation;
            RenderScriptSource(UCConstants.ClientScript, string.Format("{0}{1}.js", ControlsFolder, UCConstants.ClientScript));
            RenderScriptSource(UCConstants.AjaxScript, string.Format("{0}{1}.js", ControlsFolder, UCConstants.AjaxScript));
            if (m_bcausesvalidation)
            {
                string finalclientscript = string.Format("{0} {1};", UCConstants.Return, UCConstants.DisableButton);
                if (m_clientclickscript.Length > 0)
                {
                    m_clientclickscript = m_clientclickscript.Replace(UCConstants.Return, string.Empty);
                    finalclientscript = finalclientscript.Replace(")", string.Format(",{1}{0}{1})", m_clientclickscript, GeneralConstants.DoubleQuote));
                }
                ucButton.OnClientClick = finalclientscript;
            }
        }
        #endregion
    }
}