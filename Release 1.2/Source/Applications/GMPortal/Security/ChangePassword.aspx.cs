namespace GMPortal.Security
{
    using System;
    using System.Web;
    using System.Web.UI;
	using System.Web.UI.HtmlControls;	
    using System.Web.UI.WebControls;
    using System.Web.UI.WebControls.WebParts;
    
    using GMConstants;
	using GMWebUtilities;
    using GMUtilities.ClassAttrib;
    
    [Handler(UIHandlerConstants.ChangePasswordAspx)]
    [ControlsCollectionHandler(ControlsCollectionHandlerConstants.ChangePassword)]
    public partial class ChangePassword : BasePage
    {
        #region Events
        protected override void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        protected override void Page_Load(object sender, System.EventArgs e) { base.Page_Load(sender, e); } 
        #endregion

        #region Methods
        private void InitializeComponent() { this.Load += new EventHandler(Page_Load); } 
        #endregion

        #region Overrides
        protected override int PageID { get { return GetQueryValue<Int32>(QueryStringConstants.UserID); } } 
        #endregion
    }
}
