namespace GMPortal.Controls
{
    using System;
    using System.Web;
	using System.Web.UI.HtmlControls;	
    using System.Web.UI.WebControls;
    using System.Web.UI.WebControls.WebParts;
    
    using GMConstants;
    using GMWebUtilities;

    public partial class Twolist : BaseGMUC
    {
        #region Members
        private string m_title = string.Empty;
        #endregion

        #region Properties
        public List SelectedInstance
        {
            get { return lstSelected; }
        }

        public List UNSelectedInstance
        {
            get { return lstUNSelected; }
        }

        public string Value
        {
            get { return lstSelected.Values; }
        }

        public string Title
        {
            get { return m_title; }
            set { m_title = value; }
        }
        #endregion

        #region Events
        protected override void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        private void InitializeComponent() { this.Load += new EventHandler(Page_Load); this.Init += new EventHandler(Page_Init); }

        protected override void OnPreRender(EventArgs e)
        {
            RenderScriptSource(UCConstants.TwolistScript, string.Format("{0}{1}.js", ControlsFolder, UCConstants.TwolistScript));
            if (!this.IsPostBack)
            {
                string funcname = "return swapoptions('{0}','{1}');", funcNameALL = funcname.Replace(")", ",{2})");
                lstUNSelected.Instance.Attributes.Add(UCConstants.Dblclick, string.Format(funcname, lstUNSelected.Instance.ClientID, lstSelected.Instance.ClientID));
                lstSelected.Instance.Attributes.Add(UCConstants.Dblclick, string.Format(funcname, lstSelected.Instance.ClientID, lstUNSelected.Instance.ClientID));
                btnTORight.Instance.Attributes.Add(UCConstants.Click, lstUNSelected.Instance.Attributes[UCConstants.Dblclick]);
                btnTOLeft.Instance.Attributes.Add(UCConstants.Click, lstSelected.Instance.Attributes[UCConstants.Dblclick]);
                btnTORightALL.Instance.Attributes.Add(UCConstants.Click, string.Format(funcNameALL, lstUNSelected.Instance.ClientID, lstSelected.Instance.ClientID, Boolean.TrueString.ToLower()));
                btnTOLeftALL.Instance.Attributes.Add(UCConstants.Click, string.Format(funcNameALL, lstSelected.Instance.ClientID, lstUNSelected.Instance.ClientID, Boolean.TrueString.ToLower()));
            }
        }
        #endregion
    }
}