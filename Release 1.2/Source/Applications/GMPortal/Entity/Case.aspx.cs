namespace GMPortal.Entity
{
    using System;
    using System.Reflection;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.Web.UI.WebControls;

    using GMUtilities;
    using GMConstants;
    using GMWebUtilities;
    using GMUIDetail.Entity;
    using GMUIBinder.Entity;
    using GMUIDetail.Enums;

    [GMUtilities.ClassAttrib.Handler(UIHandlerConstants.CaseAspx)]
    public partial class Case : BasePage
    {
        #region Members
        GMUIBinder.Entity.Case2UB m_biz = new GMUIBinder.Entity.Case2UB();
        #endregion

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
                if (!this.IsPostBack)
                {
                    CopyCase();
                    Set();
                }
                btnCancel.Click += delegate { Redirect(); };
                btnSave.Click += OnSave;
                btnAddCaseRecord.Click += OnAdd;
                if (!HasPermission(GMUIDetail.Enums.Permission.EditRecord)) DisableControls();
                else DisplayByCaseType();
            }
            catch (Exception exp)
            {
                DisplayError(exp);
            }
        }
        #endregion

        #region Overrides
        protected override int PageID { get { return GetQueryValue<Int32>(QueryStringConstants.CaseID); } }

        public override dynamic Get()
        {
            return grvCaseRecord;
        }
        #endregion

        #region Methods
        void InitializeComponent()
        {
            this.Load += new EventHandler(Page_Load);
        }

        void Bind()
        {
            Bind(m_biz.Get(grvCaseRecord));
        }

        void Bind(List<DCCase2> ds)
        {
            grvCaseRecord.DataSource = ds;
            grvCaseRecord.DataBind();
        }

        void OnSave(object sender, EventArgs ea)
        {
            Save();
            Redirect();
        }

        void Redirect()
        {
            if (!string.IsNullOrEmpty(GetQueryValue<String>(QueryStringConstants.ReturnUrl)))
                Redirect(GetQueryValue<String>(QueryStringConstants.ReturnUrl), QueryStringConstants.RecordID, GetQueryValue<Int32>(QueryStringConstants.RecordID));

            Redirect(UIConstants.RecordCaseAspx, QueryStringConstants.RecordID, GetQueryValue<Int32>(QueryStringConstants.RecordID));
        }

        void CopyCase()
        {
            Int32 iCaseID = GetQueryValue<Int32>(QueryStringConstants.FromCaseID);
            if (iCaseID > 0)
            {
                RecordCaseUB rc = new RecordCaseUB();
                DCRecordCase dcrc = rc.Clone(iCaseID, GetQueryValue<Int32>(QueryStringConstants.RecordID));
                m_biz.Dispose();
                Redirect(UIConstants.CaseAspx, QueryStringConstants.CaseID, dcrc.ID, QueryStringConstants.RecordID, dcrc.RecordID, QueryStringConstants.ReturnUrl, UIConstants.RecordSearchAspx);
            }
        }

        void OnAdd(object sender, EventArgs ea)
        {
            List<DCCase2> rv = m_biz.Get(grvCaseRecord);
            rv.Add(m_biz.Get());
            grvCaseRecord.EditIndex = grvCaseRecord.Rows.Count;
            Bind(rv);
        }

        void DisplayByCaseType()
        {
            bool iscivil = GMConvert.GetBool(hdnIsCivil.Value);
            lblSentencingDetails.Visible = grvCaseRecord.Visible = btnAddCaseRecord.Visible = txtProbationType.Visible = txtRestitution.Visible = txtJailCredit.Visible = txtFileFee.Visible = txtJail.Visible =
                 txtDOBFound.Visible = txtViolationDate.Visible = !iscivil;

            txtCaseName.Visible = txtPlaintiff.Visible = txtStatusJudgment.Visible = txtDefendant.Visible = txtCaseTypeLevel.Visible = txtDistrictCourt.Visible = iscivil;

            if (iscivil)
                txtSentencingDetail.Label = "Comments:";

        }
        #endregion

        #region Gridview Events
        protected void OnEdit(object sender, GridViewEditEventArgs e)
        {
            grvCaseRecord.EditIndex = e.NewEditIndex;
            Bind();
        }

        protected void OnUpdate(object sender, GridViewUpdateEventArgs e)
        {
            grvCaseRecord.EditIndex = -1;
            Bind();
        }

        protected void OnDelete(object sender, GridViewDeleteEventArgs e)
        {
            grvCaseRecord.Rows[e.RowIndex].Visible = false;
            m_biz.Delete(GMConvert.GetInt32(grvCaseRecord.DataKeys[e.RowIndex].Value));
            Bind();
        }

        protected void OnCancel(object sender, GridViewCancelEditEventArgs e)
        {
            grvCaseRecord.EditIndex = -1;
            Bind();
        }
        #endregion
    }
}
