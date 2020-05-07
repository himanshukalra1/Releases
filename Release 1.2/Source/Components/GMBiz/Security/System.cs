namespace GMBiz.Security
{
    using System;
    using System.Data;

    using GMUtilities;
    using GMDB.Security;
    using GMDBMap.Security;
    using GMDBDetail.Security;

    public class SystemBiz : IDisposable
    {
        #region Members
        private SystemDB m_db = null; 
        #endregion

        #region Constructor
        public SystemBiz() { m_db = new SystemDB(); } 
        #endregion

        #region Methods
        public SystemDetail Get(Int32? ID)
        {
            return m_db.Get(ID);
        }

        public void Save(SystemDetail detsys)
        {
            m_db.Save(detsys);
        } 
        #endregion

        #region Dispose
        public void Dispose() { m_db.Dispose(); }
        #endregion
    }
}
