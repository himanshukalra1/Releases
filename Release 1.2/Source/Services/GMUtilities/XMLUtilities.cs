namespace GMUtilities
{
    #region using
    using System;
    using System.IO;
    using System.Xml.Serialization;
    #endregion

    public class XMLUtilities
    {
        public static string Serialize(dynamic src)
        {
            string rv = string.Empty;
            if (src != null)
            {
                XmlSerializer xs = new XmlSerializer(src.GetType());
                using (StringWriter sw = new StringWriter())
                {
                    xs.Serialize(sw, src);
                    rv = sw.ToString();
                }
                xs = null;
            }
            return rv;
        }



        public static dynamic Deserialize(string XML, System.Type type)
        {
            if (XML.Length > 0)
            {
                XmlSerializer xs = new XmlSerializer(type);
                StringReader reader = new StringReader(XML);
                return xs.Deserialize(reader);
            }

            return string.Empty;
        }
    }
}
