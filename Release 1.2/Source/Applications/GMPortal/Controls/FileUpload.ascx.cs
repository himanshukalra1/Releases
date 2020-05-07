namespace GMPortal.Controls
{
    using System;
    using System.Web;
    using System.Web.UI;
	using System.Web.UI.HtmlControls;
    using System.Web.UI.WebControls;
    using System.Web.UI.WebControls.WebParts;
    
    using GMUtilities;
	using GMConstants;
    using GMWebUtilities;

    public partial class FileUpload : BaseGMUC
    {
        #region Members
        private string m_formatregex = string.Empty;
        #endregion

        #region Property
        public string Value
        {
            get
            {
                string fileName = ucFileUpload.PostedFile.FileName ;
                string ext = fileName.Substring(fileName.LastIndexOf("."));

                if( fileName.LastIndexOf("\\") > 0 )
                    fileName = fileName.Substring(fileName.LastIndexOf("\\"));
                fileName = fileName.Substring(0, fileName.LastIndexOf("."));

                string strPath = GMConfig.UploadPath + fileName + DateTime.Now.ToString("yyyyMMddHHMMssfff");
                try
                {
                    ucFileUpload.PostedFile.SaveAs(strPath + ext);
                }
                catch (Exception ex)
                {
                    throw new EndUserException(ex.Message, ex);
                }
                return strPath + ext;
            }
            set {  }
        }

        public string Label
        {
            set { ucLabel.Text = value; }
        }

        public bool Required
        {
            set
            {
                ucRFV.Enabled = value;
                if (value) { ucRFV.ErrorMessage = ucLabel.Text; ucLabel.CssClass = UCConstants.RequiredCss; }
            }
        }

        public bool Enabled
        {
            set { ucFileUpload.Enabled = value; }
        }

        public System.Web.UI.WebControls.FileUpload Instance
        {
            get { return ucFileUpload; }
        }

        public RequiredFieldValidator RFVInstance
        {
            get { return ucRFV; }
        }

        public LinkButton LNKInstance
        {
            get { return lnkDownload; }
        }

        public Label LBLInstance
        {
            get { return ucLabel; }
        }

        public Int32 Width
        {
            set { ucFileUpload.Width = value; }
        }

        public Int32 Height
        {
            set { ucFileUpload.Height = value; }
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
            base.OnPreRender(e);
        }
        #endregion
    }
}