namespace GMDB.Base
{
    using System;
    using System.Data;
    using System.Reflection;
    using System.Data.SqlClient;
    using System.Collections.Generic;

    using GMUtilities;
    using GMConstants;
    using GMDBMap.Base;
    using GMDBDetail.Base;
    
    public abstract class BaseDB : IDisposable
    {
        #region Members
        static SqlConnection m_connection = null;
        static SqlCommand m_command = null;
        static Int16 m_count = 0;
        #endregion

        #region Protected Members
        protected IBaseMap m_map = null;
        #endregion

        #region Constructors
        protected BaseDB(IBaseMap map):this(GMConfig.ConnectionString, map)
        {
        }

        public BaseDB(string connectionstring, IBaseMap map)
        {
            if (m_connection == null) m_connection = new SqlConnection();
            if (m_count == 0) m_connection.ConnectionString = connectionstring;
            if (m_command == null) m_command = new SqlCommand();

            DetachParams();
            m_command.CommandType = CommandType.StoredProcedure;
            m_command.Connection = m_connection;
            m_count++;
            m_map = map;
        }
        #endregion

        #region Private Methods
        private void DetachParams()
        {
            m_command.Parameters.Clear();
        }

        private void AttachParams(BaseDetail detail)
        {
            if (detail == null || m_map == null) throw new Exception(ErrorConstants.NoDetailNoMap);
            DetachParams();
            Type dettype = detail.GetType();
            FieldInfo[] mapflds = m_map.GetType().GetFields(EnumConstants.GetField);
            PropertyInfo pi;
            foreach (FieldInfo fld in mapflds)
            {
                pi = dettype.GetProperty(fld.Name);
                if (pi != null) SetParameter(fld.GetValue(m_map), pi.GetValue(detail, null));
            }
        }

        private CommandBehavior AssignState(string procname)
        {
            m_command.CommandText = procname;
            CommandBehavior cb = CommandBehavior.Default;
            if (m_connection.State != ConnectionState.Open)
            {
                cb = cb | CommandBehavior.CloseConnection;
                m_connection.Open();
            }
            return cb;
        }
        #endregion

        #region Protected Methods
        protected void SetParameter(dynamic name, dynamic value)
        {
            if (value != null && !string.IsNullOrEmpty(value.ToString()))
                m_command.Parameters.AddWithValue(string.Format("@{0}", name), value);
        }

        protected void Save(BaseDetail detail, string procname)
        {
            AttachParams(detail);
            IDataReader dr = GetReader(procname);
            try {if (dr.Read()) detail.ID = dr.GetInt32(0);}
            catch { throw; }
            finally{dr.Close();}
        }

        protected IDataReader GetReader(string procname)
        {
            IDataReader dr = m_command.ExecuteReader(AssignState(procname));
            DetachParams();
            return dr;
        }

        protected DataTable GetDatatable(string procname, string tablename)
        {
            AssignState(procname);
            SqlDataAdapter sda = new SqlDataAdapter(m_command);
            DataTable dt = new DataTable(tablename);
            sda.Fill(dt);
            sda.Dispose();
            DetachParams();
            return dt;
        }

        protected DataSet GetSet(string procname)
        {
            AssignState(procname);
            SqlDataAdapter sda = new SqlDataAdapter(m_command);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            sda.Dispose();
            DetachParams();
            return ds;
        }

        protected List<T> GetList<T>(string procname, string tablename)
        {
            IDataReader dr = GetReader(procname);
            List<T> rv = new List<T>();
            while (dr.Read())
                rv.Add((T)dr.GetValue(dr.GetOrdinal(tablename)));
            dr.Close();
            return rv;
        }

        protected void Execute(string procname)
        {
            AssignState(procname);
            m_command.ExecuteNonQuery();
            DetachParams();
        } 
        #endregion

        #region Public Methods
        public virtual void Dispose()
        {
            m_count--;
            m_connection.Close();
            if (m_count != 0) return;
            m_command.Dispose();
            m_connection.Dispose();
        }
        #endregion
    }
}
