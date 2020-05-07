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

    [GMUtilities.ClassAttrib.Handler(UIHandlerConstants.VendorAspx)]
    public partial class Vendor : BasePage
    {
        #region Members
        GMUIBinder.Entity.VendorCountyRateUB m_biz = new GMUIBinder.Entity.VendorCountyRateUB();  
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
                if (!this.IsPostBack) Set();
                btnCancel.Click += delegate { Redirect(UIConstants.VendorsAspx); };
                btnSave.Click += OnSave;
                btnDelete.Click += OnDelete;
                btnAddCounty.Click += OnAdd;
                if (!HasPermission(GMUIDetail.Enums.Permission.Administration)) DisableControls();
            }
            catch (Exception exp)
            {
                DisplayError(exp);
            }
        } 
        #endregion

        #region Overrides
        protected override int PageID { get { return GetQueryValue<Int32>(QueryStringConstants.VendorID); } }

        public override dynamic Get()
        {
            return grvCountyRate;
        }
        #endregion

        #region Methods
        private void InitializeComponent()
        {
            this.Load += new EventHandler(Page_Load);
        }

        private void Bind()
        {
            Bind(m_biz.Get(grvCountyRate));
        }

        private void Bind(List<DCVendorCountyRate> ds)
        {
            grvCountyRate.DataSource = ds;
            grvCountyRate.DataBind();
        }

        protected void OnAdd(object sender, EventArgs ea)
        {
            List<DCVendorCountyRate> rv = m_biz.Get(grvCountyRate);
            rv.Add(new DCVendorCountyRate());

            grvCountyRate.EditIndex = grvCountyRate.Rows.Count;
            Bind(rv);
        }

        protected void OnSave(object sender, EventArgs ea)
        {
            Save();
            Redirect(UIConstants.VendorsAspx);
        }

        protected void OnDelete(object sender, EventArgs ea)
        {
            Delete();
            Redirect(UIConstants.VendorsAspx);
        } 
        #endregion

        #region Gridview Events
        protected void OnEdit(object sender, GridViewEditEventArgs e)
        {
            grvCountyRate.EditIndex = e.NewEditIndex;
            Bind();
        }

        protected void OnUpdate(object sender, GridViewUpdateEventArgs e)
        {
            grvCountyRate.EditIndex = -1;
            Bind();
        }

        protected void OnDelete(object sender, GridViewDeleteEventArgs e)
        {
            grvCountyRate.Rows[e.RowIndex].Visible = false;
            m_biz.Delete(GMConvert.GetInt32(grvCountyRate.DataKeys[e.RowIndex].Value));
            Bind();
        }

        protected void OnCancel(object sender, GridViewCancelEditEventArgs e)
        {
            grvCountyRate.EditIndex = -1;
            Bind();
        }
        #endregion
    }
}
