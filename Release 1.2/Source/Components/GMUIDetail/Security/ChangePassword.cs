namespace GMUIDetail.Security
{
    using System;
    using System.ServiceModel;
    using System.Runtime.Serialization;
    using System.Data;
    using GMUtilities.ClassAttrib;

    [Handler(GMConstants.UIBinderHandlerConstants.User2UB)]
    public class DCChangePassword : Base.BaseDC
    {
        private string m_password = string.Empty;
        public string Password
        {
            get { return m_password; }
            set { m_password = value; }
        }

        private string m_newPassword = string.Empty;
        public string NewPassword
        {
            get { return m_newPassword; }
            set { m_newPassword = value; }
        }

        private string m_confirmNewPassword = string.Empty;
        public string ConfirmNewPassword
        {
            get { return m_confirmNewPassword; }
            set { m_confirmNewPassword = value; }
        }
    }
}
