namespace GMPortal.Pipeline
{
    using System;
    using System.Text;
    using System.Data;
    using System.Reflection;
    using System.ComponentModel;
    using System.Web.UI.WebControls;
    using System.Web.UI;


    using GMUtilities;
    using GMUIDetail;
    using GMConstants;
    using GMWebUtilities;
    using GMUIDetail.Entity;
    using GMUtilities.Security;
    using GMUIBinder.Security;

    [GMUtilities.ClassAttrib.Handler(UIHandlerConstants.RecordPipelineAspx)]
    public partial class RecordPipeline : BasePage
    {
        #region Members
        #endregion

        #region Events
        protected override void OnInit(EventArgs e)
        {

            InitializeComponent();
            base.OnInit(e);
        }

        protected override void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);

            if (!this.IsPostBack)
            {
                Set();
                Bind();
            }
            grvRecord.PageSize = GMConfig.PipelineCount;
            btnGo.Click += OnSearch;
            btnClear.Click += OnClear;
            btnChangeStatus1.Click += OnChangeStatus;
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), this.ClientID, "<script language='javascript'>PageloanRecordPipeline('" + hdnShowSearch.ClientID + "');</script>");
            if (!HasPermission(GMUIDetail.Enums.Permission.ViewBatchPipeline)) DisableControls();
        }

        protected override void OnPreRender(EventArgs e)
        {
            this.Page.ClientScript.RegisterClientScriptInclude(typeof(string), "pipeline", "../Script/Pipeline.js");

        }
        #endregion

        #region Overrides
        protected int BatchID { get { return GetQueryValue<Int32>(QueryStringConstants.BatchID); } }

        public override dynamic Get()
        {
            return grvRecord;
        }
        #endregion

        #region Methods
        protected string Exists(object obj)
        {
            if (obj != null)
                if (obj.ToString().Length > 0)
                    return "visible";
            return "hidden";
        }

        protected void OnChangeStatus(object sender, EventArgs ea)
        {
            Save();
            Bind();
        }

        protected void OnClear(object sender, EventArgs ea)
        {
            txtID.Value = "";
            txtCustomerRefNo.Value = "";
            ddlCompanyID.Instance.ClearSelection();
            ddlRecordStatusID.Instance.ClearSelection();
            ddlCaseTypeID.Instance.ClearSelection();
            ddlActionID.Instance.ClearSelection();
            hdnSearch.Value = "";
            Bind();
        }
        
        protected void OnSearch(object sender, EventArgs ea)
        {
            Bind();
        }

        protected void Bind()
        {
            ControlCollection cc = divSearch.Controls;
            StringBuilder sbSearch = new StringBuilder();
            string spropname = string.Empty, stype = string.Empty, svalue = string.Empty;
            sbSearch.Append(" 1=1");
            foreach (Control c in cc)
            {
                if (c.ID != null)
                {
                    svalue = string.Empty;
                    spropname = c.ID.Substring(3);
                    stype = c.GetType().BaseType.Name;
                    if (stype.Equals(ControlTypeConstants.TextboxType) || stype.Equals(ControlTypeConstants.DropdownListType))
                        svalue = GMReflectionUtils.InvokeMember(c, ReflectionConstants.Value, null, EnumConstants.GetProperty);
                    if (!String.IsNullOrEmpty(svalue))
                        if (!(stype.Equals(ControlTypeConstants.DropdownListType) && svalue == "0"))
                            sbSearch.Append(" AND B." + spropname + " like '" + svalue + "'");
                }
            }

            if(BatchID>0)
                sbSearch.Append(" AND B.BatchID = " + BatchID.ToString());

            hdnSearch.Value = sbSearch.ToString();
            grvRecord.PageIndex = 0;
            grvRecord.DataBind();
        }
        
        private void InitializeComponent()
        {
            this.Load += new EventHandler(Page_Load);
        }
        #endregion
    }
}
