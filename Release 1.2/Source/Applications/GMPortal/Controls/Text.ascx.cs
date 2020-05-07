namespace GMPortal.Controls
{
    using System;
    using System.Web;
    using System.Web.UI;
	using System.Web.UI.HtmlControls;
    using System.Web.UI.WebControls;
    using System.Web.UI.WebControls.WebParts;
    
    using GMUtilities;
	using GMConstants;
    using GMWebUtilities;
	
    public partial class Text : BaseGMUC
    {
        #region Members
        private string m_formatregex = string.Empty;
        private string m_keyregex = string.Empty;
        private Int32 m_maxlen = Int32.MaxValue;
        private string m_formatfunction = string.Empty;
        private bool m_isdecimal = false;
        private bool m_ispasteallowed = true;
        public bool m_isdate = false;
        #endregion

        #region Property
        public string Value
        {
            get { return ((m_isdecimal == true) ? ucText.Text.Replace(GeneralConstants.CammaOperator, string.Empty) : ucText.Text); }
            set 
            { 
                ucText.Text = value;
                if (m_isdate)
                {
                    DateTime dt = GMConvert.GetDateTime(value);
                    if(dt != DateTime.MinValue) ucText.Text = dt.ToShortDateString();
                }
            }
        }

        public TextBoxMode TextMode
        {
            set {ucText.TextMode = value;}
        }

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

        public bool Enabled
        {
            set { ucText.Enabled = value;
            if (ucRFV.Enabled) Required = value;
            }
        }

        public TextBox Instance
        {
            get { return ucText; }
        }

        public RequiredFieldValidator RFVInstance
        {
            get { return ucRFV; }
        }

        public Label LBLInstance
        {
            get { return ucLabel; }
        }

        public Int32 Width
        {
            set { ucText.Width = value; }
        }

        public Enums.ControlsValidationType ValidationType
        {
            set
            {
                m_formatregex = GMConvert.GetString(GMReflectionUtils.InvokeMember(new GMConstants.FormatRegExConstants(), value.ToString(), null, EnumConstants.GetField, false));
                m_keyregex = GMConvert.GetString(GMReflectionUtils.InvokeMember(new GMConstants.KeyValidateRegExConstants(), value.ToString(), null, EnumConstants.GetField, false));
                m_isdecimal = (value == Enums.ControlsValidationType.DecimalNumber || value == Enums.ControlsValidationType.NegativeDecimalNumber);
                m_formatfunction = GMConvert.GetString(GMReflectionUtils.InvokeMember(new GMConstants.ClientFormat(), value.ToString(), null, EnumConstants.GetField, false));
                m_isdate = (value == Enums.ControlsValidationType.Date);
            }
        }

        public Int32 Maxlen
        {
            set { m_maxlen = value; }
        }

        public bool PasteContent
        {
            set { m_ispasteallowed = value; }
        }

        public Int32 Height
        {
            set { ucText.Height = value; }
        }

        public bool ReadOnly
        {
            set {ucText.Attributes.Add(UCConstants.ReadOnly, UCConstants.ReadOnly);}
        }

        public string Blur
        {
            set { ucText.Attributes.Add(UCConstants.BlurMethod, value); }
        }

        public string ValidationMessage
        {
            set { ucRFV.ErrorMessage = value; }
        }
        #endregion

        #region Events
        protected override void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        private void InitializeComponent() { this.Load += new EventHandler(Page_Load); this.Init += new EventHandler(Page_Init); }

        protected override void OnPreRender(EventArgs e)
        {
            base.OnPreRender(e);
            ucText.Attributes.Add(UCConstants.FocusMethod.ToLower(), string.Format("{0}('{1}');", UCConstants.Focus, ucText.ClientID));

            if(ucREV!= null) ucREV.Enabled = false;

            if (m_formatregex.Length > 0 && m_formatfunction.Length > 0)
                ucText.Attributes.Add(UCConstants.BlurMethod, string.Format("{4}{0}('{1}',{2},/{3}/);", UCConstants.Blur, ucText.ClientID, m_formatfunction, m_formatregex, ucText.Attributes[UCConstants.BlurMethod]));
            else if (m_formatregex.Length > 0)
            {
                ucREV.Enabled = true;
                ucREV.ErrorMessage = ucLabel.Text;
                ucREV.ValidationExpression = m_formatregex;
            }

            if (m_keyregex.Length > 0)
                ucText.Attributes.Add(UCConstants.KeyPress.ToLower(), string.Format("return {0}(this,/{1}/,{2},{3});", UCConstants.KeyPress, m_keyregex, m_maxlen, m_isdecimal.ToString().ToLower()));

            if (m_isdecimal)
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), this.ClientID, string.Format("{0}('{1}','{2}');", ClientFormat.DecimalNumber, ucText.ClientID, FormatRegExConstants.DecimalNumber), true);

            if (!m_ispasteallowed) this.ucText.Attributes.Add(UCConstants.Paste, "return false;");

            if (m_isdate)
            {
                RenderJQUERY();
                RenderStartupScript(this.ucText.ClientID, string.Format(UCConstants.MakeDate, this.ucText.ClientID));
            }
        }
        #endregion
    }
}