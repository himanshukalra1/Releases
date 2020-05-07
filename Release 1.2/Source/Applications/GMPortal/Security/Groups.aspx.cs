namespace GMPortal.Security
{
    using System;
    using System.Reflection;
    using System.ComponentModel;
    using GMWebUtilities;
    using GMUIDetail;
    using GMConstants;
    using GMUtilities;
    using GMUIBinder.Security;

    [GMUtilities.ClassAttrib.Handler(UIHandlerConstants.GroupsAspx)]
    public partial class Groups : BasePage
    {
        #region Events
        protected override void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        protected override void Page_Load(object sender, System.EventArgs e)
        {
            try
            {
                base.Page_Load(sender, e);
                if (!this.IsPostBack) Set(ReflectionConstants.Get);
                btnCreate.Click += delegate { Redirect(UIConstants.GroupAspx); };
                btnModify.Click += delegate { Redirect(UIConstants.GroupAspx, QueryStringConstants.GroupID, lstMembers.Value); };
                btnCancel.Click += delegate { Redirect(UIConstants.DefaultAspx); };
                btnModify.OnClientClick = string.Format("{0}{1}(this,'{2}',true,'from Groups list')", UCConstants.Return, UCConstants.Mustselectone, lstMembers.Instance.ClientID);
                lstMembers.DoubleClick = btnModify;
                if (!HasPermission(GMUIDetail.Enums.Permission.Administration)) DisableControls();
            }
            catch (Exception exp) { DisplayError(exp); }
        } 
        #endregion

        #region Methods
        private void InitializeComponent()
        {
            this.Load += new EventHandler(Page_Load);
        } 
        #endregion
    }
}
