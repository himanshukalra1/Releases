namespace GMPortal
{
    using System;
    using System.Web;


    using GMUtilities;
    using GMUIDetail;
    using GMConstants;
    using GMWebUtilities;
    using GMUIBinder.Security;

    [GMUtilities.ClassAttrib.Handler(UIBinderHandlerConstants.AuthenticationUB)]
    public partial class Login : BasePage
    {
        #region Events
        protected override void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }
        #endregion

        #region Methods
        private void InitializeComponent(){this.Load += new EventHandler(Page_Load); }
        #endregion
    }
} 