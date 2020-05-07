namespace GMPortal.Security
{
    using System;
    using System.Reflection;
    using System.ComponentModel;

	using GMUtilities;
	using GMUIDetail;
    using GMConstants;
    using GMWebUtilities;
    using GMUIBinder.Security;
    
    [GMUtilities.ClassAttrib.Handler(UIHandlerConstants.SystemAspx)]
    public partial class SystemUI : BasePage
    {
        #region Events
        protected override void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        protected override void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);
            if (!this.IsPostBack)Set();
            btnCancel.Click += delegate { Redirect(UIConstants.DefaultAspx); };
            btnSave.Click += OnSave;
            if (!HasPermission(GMUIDetail.Enums.Permission.Administration)) DisableControls();
        } 
        #endregion

        #region Methods
        private void InitializeComponent()
        {
            this.Load += new EventHandler(Page_Load);
        }

        protected void OnSave(object sender, EventArgs ea)
        {
            Save();
            Redirect(UIConstants.DefaultAspx);
        } 
        #endregion
    }
}
