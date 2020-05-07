namespace GMDB.Security
{
    using System;
    using System.Data;
    using System.Collections.Generic;

    using GMDBMap;
    using GMDBMap.Security;
    using GMDBDetail.Security;

    public class SystemDB:Base.BaseDB
    {
        #region Constructor
        public SystemDB() : base(new SystemMap()) { } 
        #endregion

        #region Methods
        public SystemDetail Get(Int32? ID)
        {
            base.SetParameter(SystemMap.ID, ID);
            return new SystemDetail(GetReader(SystemMap.ProcedureGet), m_map);
        }

        public void Save(SystemDetail detsys)
        {
            Save(detsys, SystemMap.ProcedureSave);
        } 
        #endregion
    }
}
