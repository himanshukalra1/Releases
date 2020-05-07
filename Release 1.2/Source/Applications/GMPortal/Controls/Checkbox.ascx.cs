namespace GMPortal.Controls
{
    using System;
    using System.Web.UI;
    using System.Web.UI.WebControls;
	
    using GMConstants;
    using GMWebUtilities;

    public partial class Checkbox : BaseGMUC
    {
        #region Properties
        public string Text
        {
            set { ucCBox.Text = value; }
        }

        public bool Value
        {
            get {return ucCBox.Checked; }
            set { ucCBox.Checked = value; }
        }

        public CheckBox Instance
        {
            get { return ucCBox; }
        }

        public string OnClientClick
        {
            set {ucCBox.Attributes.Add(UCConstants.Click,value); }
        }

        public bool Enabled
        {
            set { ucCBox.Enabled = value; }
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