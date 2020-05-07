namespace GMUIDetail.Base
{
    using System;
    using System.ServiceModel;
    using System.Collections.Generic;
    using System.Runtime.Serialization;

    [DataContract]
    [SerializableAttribute()]
    public abstract class BaseDC
    {
        public BaseDC() { }

        private Int32? m_ID;
        [DataMember]
        public Int32? ID
        {
            get { return this.m_ID; }
            set { this.m_ID = value; }
        }

        private int? m_userid;
        [DataMember]
        public int? UserID { get { return m_userid; } set { m_userid = value; } }

        private string m_name = string.Empty;
        [DataMember]
        public string Name
        {
            get { return this.m_name; }
            set { this.m_name = value; }
        }

        private string m_sessionID;
        [DataMember]
        public string SessionID
        {
            get { return m_sessionID; }
            set { m_sessionID = value; }
        }

        private string m_username = string.Empty;
        [DataMember]
        public string Username
        {
            get { return m_username; }
            set { m_username = value; }
        }

        private DateTime? m_dtLastLogon;
        [DataMember]
        public DateTime? LastLogon
        {
            get { return m_dtLastLogon; }
            set { m_dtLastLogon = value; }
        }

        private Boolean? m_IsActive;
        [DataMember]
        public Boolean? IsActive
        {
            get { return m_IsActive; }
            set { m_IsActive = value; }
        }

        private Boolean? m_IsLocked;
        [DataMember]
        public Boolean? IsLocked
        {
            get { return m_IsLocked; }
            set { m_IsLocked = value; }
        }

        private Boolean? m_IsChangePasssword;
        [DataMember]
        public Boolean? IsChangePasssword
        {
            get { return m_IsChangePasssword; }
            set { m_IsChangePasssword = value; }
        }

        private Boolean? m_IsCreate;
        [DataMember]
        public Boolean? IsCreate
        {
            get { return m_IsCreate; }
            set { m_IsCreate = value; }
        }

        private Boolean? m_Status;
        [DataMember]
        public Boolean? Status
        {
            get { return m_Status; }
            set { m_Status = value; }
        }

        private Exception m_Exception;
        [DataMember]
        public Exception Exception
        {
            get { return m_Exception; }
            set { m_Exception = value; }
        }

        private List<string> m_msg = new List<string>();
        [DataMember]
        public List<string> Messages
        {
            get { return m_msg; }
            set { m_msg = value; }
        }
    }
}
