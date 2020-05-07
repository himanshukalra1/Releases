namespace GMPortal.Controls
{
    using System;
    using System.Web;
    using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;	
    using System.Web.UI.WebControls.WebParts;
    
    using GMUtilities;
    using GMConstants;
    using GMWebUtilities;

    public partial class Error : BaseGMUC
    {
        #region Public Functions
        public void ShowException(Exception exp)
        {
            SetErrorMessage(exp.Message);
        }

        public void ShowErrorMessage(string errorMsg)
            {
                SetErrorMessage(errorMsg);
            }
        #endregion

        #region Private Functions
        private void SetErrorMessage(string msg)
        {
            lblErrorMsg.Text = msg;
            if (GMConvert.GetString(lblErrorMsg.Text).Length > 0 && !this.Page.ClientScript.IsStartupScriptRegistered(this.ID))
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), this.ID, UCConstants.Seterrortdon, true);
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
                if(!this.Page.ClientScript.IsClientScriptBlockRegistered(this.ID))
                    this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), this.ID, string.Format("var errlabelid='{0}'", lblErrorMsg.ClientID),true);
            }
        #endregion
    }
}