namespace GMDB.Security
{
	using System;
	using System.Data;
	using System.Collections.Generic;
	using GMDBMap.Security;
	using GMDBDetail.Security;

	public class User2DB:Base.BaseDB
	{
		#region Constructors
		public User2DB() : base(new User2Map()) { }
		#endregion

		#region Methods
		public User2Detail Get(Int32? ID)
		{
			base.SetParameter(User2Map.ID, ID);
			return new User2Detail(GetReader(User2Map.ProcedureGet), m_map);
		}

		public void Save(User2Detail det)
		{
			Save(det, User2Map.ProcedureSave);
		}

		public void Delete(Int32? ID)
		{
			base.SetParameter(User2Map.ID, ID);
			Execute(User2Map.ProcedureDelete);
		}
		#endregion
	}
}
