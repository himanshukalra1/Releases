namespace GMUIDetail.Entity
{
	using System;
	using System.Data;
	using System.ServiceModel;
	using System.Collections.Generic;
	using System.Runtime.Serialization;

	[DataContract]
	[SerializableAttribute()]
	[GMUtilities.ClassAttrib.Handler(GMConstants.UIBinderHandlerConstants.Case2UB)]
	public partial class DCCase2 : Base.BaseDC
	{
		#region Members

		private int? m_caseid;
		[DataMember]
		public int? CaseID {get{ return m_caseid;} set{ m_caseid=value; }}

		private DateTime? m_createddate;
		[DataMember]
		public DateTime? CreatedDate {get{ return m_createddate;} set{ m_createddate=value; }}

		private DateTime? m_modifieddate;
		[DataMember]
		public DateTime? ModifiedDate {get{ return m_modifieddate;} set{ m_modifieddate=value; }}

		private string m_description;
		[DataMember]
		public string Description {get{ return m_description;} set{ m_description=value; }}

		private int? m_leveltypeid;
		[DataMember]
		public int? LevelTypeID {get{ return m_leveltypeid;} set{ m_leveltypeid=value; }}

		private int? m_pleatypeid;
		[DataMember]
		public int? PleaTypeID {get{ return m_pleatypeid;} set{ m_pleatypeid=value; }}

		private int? m_dispositiontypeid;
		[DataMember]
		public int? DispositionTypeID {get{ return m_dispositiontypeid;} set{ m_dispositiontypeid=value; }}

        private DataTable m_dspleatypeid;
        [DataMember]
        public DataTable DSPleaTypeID { get { return m_dspleatypeid; } set { m_dspleatypeid = value; } }

        private DataTable m_dsleveltypeid;
        [DataMember]
        public DataTable DSLevelTypeID { get { return m_dsleveltypeid; } set { m_dsleveltypeid = value; } }

        private DataTable m_dsdispositiontypeid;
        [DataMember]
        public DataTable DSDispositionTypeID { get { return m_dsdispositiontypeid; } set { m_dsdispositiontypeid = value; } }
		#endregion
	}
}
