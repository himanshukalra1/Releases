namespace GMUtilities.ClassAttrib
{
    using System;
    [AttributeUsage(AttributeTargets.Class)] 
    public class ControlsCollectionHandler:Attribute
    {
        #region Constructor
        public ControlsCollectionHandler(string functionname) { m_ccparent = functionname; }
        #endregion

        #region Properties
        private string m_ccparent = string.Empty;
        public string CCParent//Controls Collection Parent
        {
            get { return m_ccparent; }
            set { m_ccparent = value; }
        }
        #endregion
    }
}
