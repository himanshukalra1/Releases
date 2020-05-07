namespace GMBiz.Security
{
    using System;
    using System.Data;
    
    using GMUtilities;
    using GMDB.Security;
    using GMDBMap.Security;
    using GMDBDetail.Security;
    using System.Collections.Generic;

    public class GroupBiz:IDisposable
    {
        #region Members
        private GroupDB m_db = null; 
        #endregion

        #region Constuctor
        public GroupBiz() { m_db = new GroupDB(); } 
        #endregion
        
        #region Methods
        public Group2Detail Get(Int32? ID)
        {
            return ((!ID.HasValue) ? null : m_db.Get(ID));
        }

        public List<Int32> GetPermissions(Int32? ID)
        {
            return m_db.GetPermissions(ID);
        }

        public DataTable Get()
        {
            return m_db.Get();
        }

        public void Save(Group2Detail detGrp)
        {
            m_db.Save(detGrp);
        }

        public void Delete(Int32 ID)
        {
            m_db.Delete(ID);
        } 
        #endregion

        #region Dispose
        public void Dispose() { m_db.Dispose(); }
        #endregion
    }
}

