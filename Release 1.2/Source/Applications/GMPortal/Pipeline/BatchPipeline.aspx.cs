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
    using GMUIBinder.Security;

    [GMUtilities.ClassAttrib.Handler(UIHandlerConstants.BatchPipelineAspx)]
    public partial class BatchPipeline : BasePage
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

            if (!this.IsPostBack)
            {
                Set();
            }
            grvDataTable.PageSize = GMConfig.PipelineCount; 
            btnGo.Click += OnSearch;
            btnClear.Click += OnClear;
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), this.ClientID, "<script language='javascript'>PageloanBatchPipeline('" + hdnShowSearch.ClientID + "');</script>");
            if (!HasPermission(GMUIDetail.Enums.Permission.ViewBatchPipeline)) DisableControls();
        }

        protected override void OnPreRender(EventArgs e)
        {
            this.Page.ClientScript.RegisterClientScriptInclude(typeof(string), "pipeline", "../Script/Pipeline.js");

        }
        #endregion

        #region Methods
        protected void OnClear(object sender, EventArgs ea)
        {
            txtID.Value = "";
            txtName.Value = "";
            ddlCompanyID.Instance.ClearSelection();
            ddlUserID.Instance.ClearSelection();
            hdnSearch.Value = "";
            grvDataTable.PageIndex = 0;
            grvDataTable.DataBind();
        }

        protected void OnSearch(object sender, EventArgs ea)
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
            hdnSearch.Value = sbSearch.ToString();
            grvDataTable.PageIndex = 0;
            grvDataTable.DataBind();
        }
        
        private void InitializeComponent()
        {
            this.Load += new EventHandler(Page_Load);
        }
        #endregion
    }
}
