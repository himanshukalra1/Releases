namespace GMDBDetail.Base
{
    using System;
    using System.Data;
    using GMConstants;
    using GMDBMap.Base;
    using System.Reflection;
    using System.Collections;
    
    public abstract class BaseDetail
    {
        #region Members
        private Int32? m_ID;
        public Int32? ID { get { return m_ID; } set { m_ID = value; } }
        #endregion

        #region Constructor
        protected BaseDetail()
        {
        }

        protected BaseDetail(IDataReader reader, IBaseMap mapinstance)
        {
            FillValues(reader, mapinstance);
        }
        #endregion

        #region Private Methods
        private Hashtable GetFields(IBaseMap mapinstance, bool isswap)
        {
            if (mapinstance == null)
                throw new Exception(ErrorConstants.NoDetailNoMap);
            FieldInfo[] mapflds = mapinstance.GetType().GetFields(EnumConstants.GetField);
            Hashtable ht = new Hashtable();
            foreach (FieldInfo fld in mapflds)
            {
                if (isswap)
                    ht.Add(fld.GetValue(mapinstance), fld.Name);
                else
                    ht.Add(fld.Name, fld.GetValue(mapinstance));
            }
            return ht;
        } 
        #endregion

        #region Methods
        public void FillValues(IDataReader reader, IBaseMap mapinstance)
        {
            if (reader.Read())
            {
                Hashtable htmap = GetFields(mapinstance, true);
                int lv, count = reader.FieldCount;
                Type type = this.GetType();
                PropertyInfo pi;
                string colname = string.Empty;
                for (lv = 0; lv < count; lv++)
                {
                    colname = reader.GetName(lv);
                    if (htmap.ContainsKey(colname))
                    {
                        pi = type.GetProperty(htmap[colname].ToString());
                        if (pi != null && !reader.IsDBNull(lv))
                            pi.SetValue(this, reader.GetValue(lv), null);
                    }
                }
                reader.Close();
            }
        } 
        #endregion
    }
}
