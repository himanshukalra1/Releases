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

    [GMUtilities.ClassAttrib.Handler(UIHandlerConstants.RecordSearchAspx)]
    public partial class RecordSearch : BasePage
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
            if (!this.IsPostBack) { Set(); }
        }

        protected override void OnPreRender(EventArgs e)
        {
            this.Page.ClientScript.RegisterClientScriptInclude(typeof(string), "pipeline", "../Script/Pipeline.js");

        }
        #endregion

        #region Overrides
        protected override int PageID { get { return GetQueryValue<Int32>(QueryStringConstants.RecordID); } }
        #endregion

        #region Methods
        void OnChangeStatus(object sender, EventArgs ea)
        {
            Save();
        }

        void InitializeComponent()
        {
            this.Load += new EventHandler(Page_Load);
            
        }

        protected void gvRecordCaseLoad(object sender, EventArgs e)
        {
            DisplayByCaseType((GridView)sender, hdnIsCivil.Value);
        }

        protected void DisplayByCaseType(GridView grdCase, dynamic iscivil)
        {
            bool ciscivil = GMConvert.GetBool(iscivil);
            DataUtils.SetVisible(grdCase, (int)Entity.ColumnOrder.ViolationDate, !ciscivil);
            DataUtils.SetVisible(grdCase, (int)Entity.ColumnOrder.FileDate, !ciscivil);
            DataUtils.SetVisible(grdCase, (int)Entity.ColumnOrder.DispoDate, !ciscivil);
            DataUtils.SetVisible(grdCase, (int)Entity.ColumnOrder.CaseCount, !ciscivil);
            DataUtils.SetVisible(grdCase, (int)Entity.ColumnOrder.ProbationType, !ciscivil);
            DataUtils.SetVisible(grdCase, (int)Entity.ColumnOrder.FileFee, !ciscivil);
            DataUtils.SetVisible(grdCase, (int)Entity.ColumnOrder.Restitution, !ciscivil);
            DataUtils.SetVisible(grdCase, (int)Entity.ColumnOrder.DistrictCourt, ciscivil);
            DataUtils.SetVisible(grdCase, (int)Entity.ColumnOrder.CaseTypeLevel, ciscivil);
            DataUtils.SetVisible(grdCase, (int)Entity.ColumnOrder.CaseName, ciscivil);
            DataUtils.SetVisible(grdCase, (int)Entity.ColumnOrder.Plaintiff, ciscivil);
            DataUtils.SetVisible(grdCase, (int)Entity.ColumnOrder.Defendant, ciscivil);
            DataUtils.SetVisible(grdCase, (int)Entity.ColumnOrder.StatusJudgment, ciscivil);
        }
        #endregion
    }
}
