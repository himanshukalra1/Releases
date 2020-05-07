namespace GMPortal
{
    using System;
	using System.Web;	

    using GMUIDetail;
    using GMConstants;
    using GMWebUtilities;
    
	public partial class Default : BasePage
    {
        #region Events
        protected override void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        protected override void Page_Load(object sender, System.EventArgs e)
        {
            base.Page_Load(sender, e);
            if (string.Compare(this.Request[GeneralConstants.EventTarget], GeneralConstants.Logout, true) == 0)
                LogOut();
        }
        #endregion

        #region Methods
        private void InitializeComponent() { this.Load += new EventHandler(Page_Load); }
        #endregion
	}
}