namespace GMUtilities.ClassAttrib
{
    using System;
    [AttributeUsage(AttributeTargets.Class)] 
    public class Handler:Attribute
    {
        #region Properties
        private string m_type = string.Empty;//Handler class type
        public string TypeH
        {
            get { return m_type; }
            set { m_type = value; }
        }
        #endregion

        #region Constructor
        public Handler(string type) { m_type = type; }
        #endregion
    }
}
