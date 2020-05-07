namespace GMDBDetail.Entity
{
	using System;
	using System.Data;
	using GMDBMap.Base;
	using System.Collections.Generic;

	public class Case2Detail : Base.BaseDetail
	{
		#region Constructors
		public Case2Detail(): base(){}
		public Case2Detail(IDataReader reader, IBaseMap mapinstance) : base(reader, mapinstance) { }
		#endregion

		#region Members

		private int? m_caseid;
		public int? CaseID {get{ return m_caseid;} set{ m_caseid=value; }}

		private DateTime? m_createddate;
		public DateTime? CreatedDate {get{ return m_createddate;} set{ m_createddate=value; }}

		private DateTime? m_modifieddate;
		public DateTime? ModifiedDate {get{ return m_modifieddate;} set{ m_modifieddate=value; }}

		private string m_description;
		public string Description {get{ return m_description;} set{ m_description=value; }}

		private int? m_leveltypeid;
		public int? LevelTypeID {get{ return m_leveltypeid;} set{ m_leveltypeid=value; }}

		private int? m_pleatypeid;
		public int? PleaTypeID {get{ return m_pleatypeid;} set{ m_pleatypeid=value; }}

		private int? m_dispositiontypeid;
		public int? DispositionTypeID {get{ return m_dispositiontypeid;} set{ m_dispositiontypeid=value; }}
		#endregion
	}
}
