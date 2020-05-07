namespace GMUtilities
{
    using System;
    using System.Web;
    using System.Web.Caching;
    using System.Web.Security;    

    public class CacheMgr
    {
        #region Methods
        public static void Add<T>(string key, T value)
        {
            HttpRuntime.Cache.Insert(key, value,null, Cache.NoAbsoluteExpiration, FormsAuthentication.Timeout, CacheItemPriority.Normal, null);
        }

        public static T Get<T>(string key)
        {
            return (T) (string.IsNullOrEmpty(key)==true?default(T): HttpRuntime.Cache[key]);
        }

        public static void Clear(string key)
        {
            HttpRuntime.Cache.Remove(key);
        }
        #endregion
    }
}
