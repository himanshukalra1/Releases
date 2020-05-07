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

    [GMUtilities.ClassAttrib.Handler(UIHandlerConstants.BatchAspx)]
    public partial class BatchUpload : BasePage
    {
        #region Members
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
                    Set();
                    trMsg.Visible = false;
                }
                btnUpload.Click += OnUpload;
                btnContinue.Click += delegate { Redirect(UIConstants.RecordPipelineAspx, QueryStringConstants.BatchID, hdnID.Value); };
                if (!HasPermission(GMUIDetail.Enums.Permission.BatchUpload)) DisableControls();
            }
            catch (Exception exp)
            {
                DisplayError(exp);
            }
        } 
        #endregion

        #region Overrides
        
        #endregion

        #region Methods
        private void InitializeComponent()
        {
            this.Load += new EventHandler(Page_Load);
        }

        protected void OnUpload(object sender, EventArgs ea)
        {
            try
            {
                DCBatch batch = (DCBatch) Save();
                trMsg.Visible = true;
                if (batch.Messages.Count > 0)
                {
                    blbMsg.Text = string.Empty;
                    for( int i=0;i<=batch.Messages.Count-1;i++)
                        blbMsg.Text = string.Format("{0}{1}{2}", blbMsg.Text, batch.Messages[i], GeneralConstants.HTMLNewLine);
                }
                else
                    blbMsg.Text = ErrorConstants.UploadSuccess;
                hdnID.Value = batch.ID.Value.ToString();
                btnContinue.Enabled = batch.ID > 0;
            }
            catch (Exception exp)
            {
                DisplayError(exp.Message);
            }
        }

        #endregion
    }
}
