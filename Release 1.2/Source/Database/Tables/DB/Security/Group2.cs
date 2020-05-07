namespace GMDB.Security
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Security;
	using GMDBDetail.Security;

	public class Group2DB:Base.BaseDB
	{
		#region Constructors
		public Group2DB() : base(new Group2Map()) { }
		#endregion

		#region Methods
		public Group2Detail Get(Int32? ID)
		{
			base.SetParameter(Group2Map.ID, ID);
			return new Group2Detail(GetReader(Group2Map.ProcedureGet), m_map);
		}

		public void Save(Group2Detail det)
		{
			Save(det, Group2Map.ProcedureSave);
		}

		public void Delete(Int32? ID)
		{
			base.SetParameter(Group2Map.ID, ID);
			Execute(Group2Map.ProcedureDelete);
		}
		#endregion
	}
}
