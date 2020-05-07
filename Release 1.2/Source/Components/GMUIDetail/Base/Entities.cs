namespace GMUIDetail.Base
{
    using System;
    using System.ServiceModel;
    using System.Runtime.Serialization;
    using System.Data;
    using GMUtilities.ClassAttrib;

    [DataContract]
    [SerializableAttribute()]
    public class Entities:Base.BaseDC
    {
        private DataTable m_dtMembers = null;
        [DataMember]
        public DataTable DSMembers
        {
            get { return this.m_dtMembers; }
            set { this.m_dtMembers = value; }
        }
    }
}
