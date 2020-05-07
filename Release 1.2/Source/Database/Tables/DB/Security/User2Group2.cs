namespace GMDB.Security
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Security;
	using GMDBDetail.Security;

	public class User2Group2DB:Base.BaseDB
	{
		#region Constructors
		public User2Group2DB() : base(new User2Group2Map()) { }
		#endregion

		#region Methods
		public User2Group2Detail Get(Int32? ID)
		{
			base.SetParameter(User2Group2Map.ID, ID);
			return new User2Group2Detail(GetReader(User2Group2Map.ProcedureGet), m_map);
		}

		public void Save(User2Group2Detail det)
		{
			Save(det, User2Group2Map.ProcedureSave);
		}

		public void Delete(Int32? ID)
		{
			base.SetParameter(User2Group2Map.ID, ID);
			Execute(User2Group2Map.ProcedureDelete);
		}
		#endregion
	}
}
