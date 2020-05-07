namespace GMUIDetail.Entity
{
    using System;
    using System.Data;
    using System.ServiceModel;
    using System.Collections.Generic;
    using System.Runtime.Serialization;

    [DataContract]
    [SerializableAttribute()]
    [GMUtilities.ClassAttrib.Handler(GMConstants.UIBinderHandlerConstants.RecordSearchUB)]
    public class DCRecordSearch : Base.BaseDC
    {
        #region Members
        private DataTable m_dt;
        [DataMember]
        public DataTable DataTable { get { return m_dt; } set { m_dt = value; } }

        private Boolean? m_iscivil;
        [DataMember]
        public Boolean? IsCivil { get { return m_iscivil; } set { m_iscivil = value; } }
        #endregion

    }
}
