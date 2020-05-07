namespace GMPortal
{
    using System;
    using System.Web;
	using System.Web.Security;
	
	using GMConstants;
    using GMWebUtilities;
    using GMUIBinder.Security;
	using GMUtilities.Security;

	public partial class Master : System.Web.UI.MasterPage
	{
        #region Events
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            if (!IsPostBack)
            {
                mtMenu.DataSource = smdsAdmin;
                mtMenu.DataBind();
            }
            mtMenu.Visible = btnLogOut.Visible = ((BasePage)this.Page).HasToken();
            btnLogOut.Click += OnLogOut;
        }

        protected void mtMenu_DataBound(object sender, EventArgs e) { }

        protected void OnLogOut(object sender, EventArgs ea) { 
            ((BasePage)this.Page).LogOut(); 
        } 
        #endregion

        #region Methods
        protected void DisplayError(string msg) { erMaster.ShowErrorMessage(msg); }
        #endregion        
	}
}