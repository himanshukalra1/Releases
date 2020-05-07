namespace GMPortal.Controls
{
    using System;
    using System.Web;
	using System.Configuration;
    using System.Web.UI.WebControls;
    using System.Web.UI.HtmlControls;

    using GMWebUtilities;

    public partial class Pagetitle : BaseGMUC
    {
        #region Property

        public string Label
        {
            set { ucLabel.Text = value; }
        }
        #endregion

        #region Events
        protected override void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        private void InitializeComponent() { this.Load += new EventHandler(Page_Load); this.Init += new EventHandler(Page_Init); }
        #endregion
    }
}