namespace GMPortal.Controls
{
    using System;
    using System.Web.UI.WebControls;

    using GMUtilities;
    using GMConstants;
    using GMWebUtilities;

    public partial class List : BaseGMUC
    {
        #region Properties
        public int Height
        {
            set { ucList.Height = value; }
        }

        public int Width
        {
            set { ucList.Width = value; }
        }

        public string Value
        {
            get { return ((ucList.SelectedValue != null) ? ucList.SelectedValue : string.Empty); }
        }

        public ListBox Instance
        {
            get { return ucList; }
        }

        public ListSelectionMode SelectionMode
        {
            set { ucList.SelectionMode = value; }
        }

        public ListItem SelectedItem
        {
            get { return ucList.SelectedItem; }
        }

        public ListItemCollection Items
        {
            get { return ucList.Items; }
        }

        public string Values
        {
            get
            {
                string ps = GMConvert.GetString(this.Request[ucList.UniqueID]);
                if (ps.Trim().Length > 0)
                {
                    ps = ps.Replace(GeneralConstants.CammaOperator, GeneralConstants.CombiningOperator);
                    ps = string.Format("{0}{1}", ps, GeneralConstants.CombiningOperator);
                }
                return ps;
            }
        }

        public string SelectedItems
        {
            get
            {
                string sXML = string.Empty;
                foreach (ListItem li in Items)
                    sXML = XMLUtilities.Serialize(li);
                return sXML;
            }
        }

        public string Heading
        {
            set { lblHeading.Text = value; lblHeading.Visible = (value.Length > 0); }
        }

        public Button DoubleClick
        {
            set { ucList.Attributes.Add(UCConstants.DoubleClick, string.Format(UCConstants.ClickButton, value.Instance.ClientID)); }
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