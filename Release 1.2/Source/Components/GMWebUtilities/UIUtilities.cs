namespace GMWebUtilities
{
    using System;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using GMConstants;
    using GMUtilities.Security;
    using GMUtilities;
    using System.Reflection;

    public class UIUtilities
    {
        #region Bind Methods
        public static void BindTwolist(dynamic ctl, dynamic selected, dynamic unselected)
        {
            BindList(GMReflectionUtils.InvokeMember(ctl, ReflectionConstants.SelectedInstance, null, EnumConstants.GetProperty), selected);
            BindList(GMReflectionUtils.InvokeMember(ctl, ReflectionConstants.UnSelectedInstance, null, EnumConstants.GetProperty), unselected);
        }

        public static void BindGridView(dynamic ctl, dynamic options)
        {
            ctl.DataSource = options;
            ctl.DataBind();
        }

        public static void BindList(dynamic ctl, dynamic options)
        {
            BindList(ctl, options, OptionsMap.Text, OptionsMap.Value);
        }

        public static void BindList(dynamic ctl, dynamic options, string DataTextField, string DataValueField)
        {
            ListControl lstctl = (ListControl)(GMReflectionUtils.InvokeMember(ctl, ReflectionConstants.Instance, null, EnumConstants.GetProperty));
            lstctl.DataSource = options;
            lstctl.DataTextField = DataTextField;
            lstctl.DataValueField = DataValueField;
            lstctl.DataBind();
        }
        #endregion

        #region UI
        public static void FillValues(ControlCollection cc, dynamic[] instances)
        {
            ManageValues(cc, instances, true);
        }

        public static void SetlValues(ControlCollection cc, dynamic[] instances)
        {
            ManageValues(cc, instances, false);
        }
        #endregion

        #region Misc

        public static T GetQueryValue<T>(string query, string name)
        {
            query = CryptoUtils.DecryptTripleDES(query);
            Type t = typeof(T);
            T ret = default(T);
            if (query.Length > 0)
            {
                name = string.Format("{0}{1}", name, GeneralConstants.EqualOperator);
                Int32 index = query.IndexOf(name);
                if (index > -1)
                {
                    index += name.Length;
                    Int32 endindex = query.IndexOf(GeneralConstants.QueryStringSeparator, index);
                    if (endindex == -1) endindex = query.Length;
                    endindex = endindex - index;
                    ret = (T)Convert.ChangeType(query.Substring(index, endindex), t);
                }
            }
            return ret;
        } 

        #endregion

        #region Private Methods
        private static void ManageValues(ControlCollection cc, dynamic[] instances, bool isgetctl)
        {
            string spropname = string.Empty, stype = string.Empty;
            bool isbaseuc = false;
            foreach (Control c in cc)
            {
                if (c.ID != null){
                    spropname = c.ID.Substring(3);
                    isbaseuc = (c is BaseGMUC);
                    foreach (dynamic ob in instances)
                    {
                        try
                        {
                            if (!isgetctl)
                            {
                                stype = c.GetType().BaseType.Name;
                                if (stype.Equals(ControlTypeConstants.ListboxType) || stype.Equals(ControlTypeConstants.DropdownListType))
                                    UIUtilities.BindList(c, GMReflectionUtils.InvokeMember(ob, string.Format("{0}{1}", ReflectionConstants.DataSource, spropname), null, EnumConstants.GetProperty));
                                else if (stype.Equals(ControlTypeConstants.GridViewType))
                                    UIUtilities.BindGridView(c, GMReflectionUtils.InvokeMember(ob, spropname, null, EnumConstants.GetProperty));
                                else if (stype.Equals(ControlTypeConstants.TwolistType))
                                    UIUtilities.BindTwolist(c, GMReflectionUtils.InvokeMember(ob, string.Format("{0}{1}", ReflectionConstants.DataSource, ReflectionConstants.Selected), null, EnumConstants.GetProperty),
                                        GMReflectionUtils.InvokeMember(ob, string.Format("{0}{1}", ReflectionConstants.DataSource, ReflectionConstants.UNSelected), null, EnumConstants.GetProperty));
                                GMReflectionUtils.InvokeProperty(c, ReflectionConstants.Value, new object[] { GMReflectionUtils.InvokeMember(ob, spropname, null, EnumConstants.GetProperty) });
                            }
                            else if(isgetctl && isbaseuc)
                                GMReflectionUtils.InvokeProperty(ob, spropname, new object[] { GMReflectionUtils.InvokeMember(c, ReflectionConstants.Value, null, EnumConstants.GetProperty) });
                        }
                        catch (EndUserException ex) { Logger.LogMessage(ex.Message); throw ex; }
                        catch (Exception ex) { Logger.LogMessage(ex.Message); }
                    }
                }
                if (!isbaseuc && c.Controls.Count > 0) ManageValues(c.Controls, instances, isgetctl);
            }
        }
        #endregion
    }
}
