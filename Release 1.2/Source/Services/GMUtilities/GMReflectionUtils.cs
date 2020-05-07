namespace GMUtilities
{
    using System;
    using System.Reflection;
    using GMConstants;
    using System.Web.UI;
    using System.Runtime.Remoting;
    using System.ComponentModel;
    using ClassAttrib;

    public class GMReflectionUtils
    {
        #region Copy
        public static void Copy(dynamic src, dynamic target)
        {
            Copy(src, target, EnumConstants.GetField, true);
        }

        public static void Copy(dynamic src, dynamic target, bool idcopy)
        {
            Copy(src, target, EnumConstants.GetField, idcopy);
        }

        public static void Copy(dynamic src, dynamic target, BindingFlags bflags, bool idcopy)
        {
            Copy(src, target, false, bflags, idcopy);
        }

        public static void Copy(dynamic src, dynamic target, bool isbaseonly, BindingFlags bflags, bool idcopy)
        {
            if (src != null && target != null)
            {
                Type stype = (isbaseonly == true) ? src.GetType().BaseType : src.GetType(), ttype = target.GetType();
                PropertyInfo[] destpi =ttype.GetProperties(bflags);
                PropertyInfo srcpi = null;
                foreach (PropertyInfo pi in destpi)
                {
                    if (!idcopy && pi.Name == OptionsMap.Value) continue;
                    srcpi = stype.GetProperty(pi.Name, EnumConstants.GetField | EnumConstants.ProtectedGetField);
                    if (srcpi != null) InvokeProperty(target, pi.Name, new object[] { srcpi.GetValue(src, null) });
                }
            }
        }
        #endregion

        #region Instance
        public static T GetHandler<T>(Type type)
        {
            object[] atts = type.GetCustomAttributes(typeof(T), true);
            T hr = default(T); 
            if (atts.GetLength(0) > 0) hr = (T)atts[0];
            return hr;
        }

        public static dynamic GetInstance(string classtype)
        {
            return Activator.CreateInstance(classtype.Substring(0, classtype.IndexOf(".")), classtype).Unwrap();
        }
        #endregion

        #region Misc
        public static dynamic InvokeMember(dynamic instance, string mname, dynamic[] param)
        {
            return InvokeMember(instance, mname, param, EnumConstants.InvokeMethod);
        }

        public static void InvokeProperty(dynamic instance, string mname, dynamic[] param)
        {
            if (param != null && param[0] != null)
            {
                PropertyInfo pi = instance.GetType().GetProperty(mname, EnumConstants.GetField);
                if (pi != null)
                {
                    Type t = pi.PropertyType;
                    if (t != null)
                    {
                        try { param[0] = Convert.ChangeType(param[0], t); }
                        catch (InvalidCastException) { param[0] = TypeDescriptor.GetConverter(t).ConvertFrom(param[0]); }
                    }
                }
            }
            InvokeMember(instance, mname, param, EnumConstants.SetProperty);
        }

        public static dynamic InvokeMember(dynamic instance, string mname, dynamic[] param, BindingFlags bflags)
        {
            return InvokeMember(instance, mname, param, bflags, true);
        }

        public static dynamic InvokeMember(dynamic instance, string mname, dynamic[] param, BindingFlags bflags, bool isthrow)
        {
            dynamic rv = null;
            try
            {
                if (instance != null)
                {
                    Type t = instance.GetType();
                    if(t.GetMember(mname, bflags).Length > 0)
                        rv = instance.GetType().InvokeMember(mname, bflags, null, instance, param);
                }
            }
            catch (TargetInvocationException ex) { throw ex.InnerException; }
            catch (Exception exp) { if (isthrow) throw exp; }
            return rv;
        }
        #endregion
    }
}
