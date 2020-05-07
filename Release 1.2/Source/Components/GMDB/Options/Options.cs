namespace GMDB.Options
{
    using System;
    using System.Data;

    public class OptionsDB:Base.BaseDB
    {
        #region Constructor
        public OptionsDB() : base(null) { } 
        #endregion

        #region Methods
        public DataTable GetOptions<T>(string name, T value, string procname, string tablename)
        {
            this.SetParameter(name, value);
            return GetOptions(procname, tablename);
        }

        public DataTable GetOptions(string procname, string tablename)
        {
            return this.GetDatatable(procname, tablename);
        } 
        #endregion
    }
}
