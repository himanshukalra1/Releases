namespace GMDB.Security
{
    using System;
    using System.Data;
    using System.Collections.Generic;

    using GMDBMap;
    using GMDBMap.Security;
    using GMDBDetail.Security;    

    public class UserDB:Base.BaseDB
    {
        #region Constructor
        public UserDB() : base(new User2Map()) { } 
        #endregion

        #region Methods
        public User2Detail GetUserLogOn(string username, string pwd, Int16 pwdattempts, DateTime dtnow)
        {
            User2Map MapInstance = new User2Map();
            this.SetParameter(User2Map.Name, username);
            this.SetParameter(User2Map.Password, pwd);
            this.SetParameter(CommonMap.PasswordAttempts, pwdattempts);
            this.SetParameter(CommonMap.ServerDatetime, dtnow);
            User2Detail det = new User2Detail(GetReader(User2Map.ProcedureGetUserLogOn), MapInstance);
            return det;
        }

        public User2Detail Get(Int32? ID)
        {
            base.SetParameter(User2Map.ID, ID);
            return new User2Detail(GetReader(User2Map.ProcedureGet), m_map);
        }

        public DataTable Get()
        {
            return GetDatatable(User2Map.ProcedureGet, GMConstants.OptionsMap.Users);
        }

        public List<Int32> GetGroups(Int32? ID)
        {
            base.SetParameter(User2Group2Map.UserID, ID);
            return GetList<Int32>(User2Map.ProcedureGetGroups, User2Group2Map.GroupID);
        }

        public void Save(User2Detail detusr)
        {
            Save(detusr, User2Map.ProcedureSave);
        }

        public void Delete(Int32 ID)
        {
            base.SetParameter(User2Map.ID, ID);
            Execute(User2Map.ProcedureDelete);
        } 
        #endregion

        #region Dispose
        public override void Dispose() { base.Dispose(); } 
        #endregion
    }
}
