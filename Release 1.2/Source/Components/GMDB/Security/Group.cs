namespace GMDB.Security
{
    using System;
    using System.Data;
    using System.Collections.Generic;

    using GMDBMap.Security;
    using GMDBDetail.Security;

    public class GroupDB:Base.BaseDB
    {
        #region Constructor
        public GroupDB() : base(new Group2Map()) { } 
        #endregion

        #region Methods
        public Group2Detail Get(Int32? ID)
        {
            base.SetParameter(Group2Map.ID, ID);
            return new Group2Detail(GetReader(Group2Map.ProcedureGet), m_map);
        }

        public DataTable Get()
        {
            return GetDatatable(Group2Map.ProcedureGet, GMConstants.OptionsMap.Groups);
        }

        public List<Int32> GetPermissions(Int32? ID)
        {
            base.SetParameter(Group2PermissionMap.GroupID, ID);
            return GetList<Int32>(Group2Map.ProcedureGetPermissions, Group2PermissionMap.PermissionID);
        }

        public void Save(Group2Detail detgrp)
        {
            Save(detgrp, Group2Map.ProcedureSave);
        }

        public void Delete(Int32 ID)
        {
            base.SetParameter(Group2Map.ID, ID);
            Execute(Group2Map.ProcedureDelete);
        } 
        #endregion

        #region Dispose
        public override void Dispose() { base.Dispose(); } 
        #endregion
    }
}
