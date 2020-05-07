namespace GMPortal.Controls
{
    using System;
    using GMWebUtilities;

    public partial class PasswordHint : BaseGMUC
    {
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