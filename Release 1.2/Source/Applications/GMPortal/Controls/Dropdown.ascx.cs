namespace GMPortal.Controls
{
    using System;
    using System.Web.UI.WebControls;
	
    using GMWebUtilities;
    using GMConstants;

    public partial class Dropdown : BaseGMUC
    {
        #region Events
        protected override void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        private void InitializeComponent() { this.Load += new EventHandler(Page_Load); this.Init += new EventHandler(Page_Init); }
        #endregion

        #region Properties
        public string Label
        {
            set { ucLabel.Text = value; }
        }

        public bool Required
        {
            set
            {
                ucRFV.Enabled = value;
                if (value) { ucRFV.ErrorMessage = ucLabel.Text; ucLabel.CssClass = UCConstants.RequiredCss; }
            }
        }

        public DropDownList Instance
        {
            get { return ucDDL; }
        }

        public dynamic Value
        {
            get {
                if (ucDDL.SelectedValue == UCConstants.Zero) return null;
                else return ucDDL.SelectedValue; }
            set
            {
                if (value == null) return;
                string val = value.ToString();
                if (!string.IsNullOrEmpty(val)) ucDDL.SelectedValue = val;
            }
        }

        public bool Enabled
        {
            set { ucDDL.Enabled = value;
            if (ucRFV.Enabled) Required = value;
            }
        }

        public dynamic DataSource
        {
            get { return ucDDL.DataSource; }
            set { ucDDL.DataSource = value; }
        }

        public string DataTextField
        {
            get { return ucDDL.DataTextField; }
            set { ucDDL.DataTextField = value;
            
            }
        }

        public string DataValueField
        {
            get { return ucDDL.DataValueField; }
            set { ucDDL.DataValueField = value; }
        }

        public string OnClientChange
        {
            set { ucDDL.Attributes.Add(UCConstants.Change , value); }
        }
        #endregion

        #region Methods
        internal void Add(string text, dynamic value)
        {
            Add(text, value, 0);
        }

        internal void Add(string text, dynamic value, int index)
        {
            ucDDL.Items.Insert(index, new ListItem(text, value.ToString()));
        }
        #endregion
    }
}