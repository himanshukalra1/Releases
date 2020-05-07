namespace GMConstants
{
    using System;
    using System.Reflection;
    public class EnumConstants
    {
        public const BindingFlags GetField = BindingFlags.Instance | BindingFlags.Static | BindingFlags.Public | BindingFlags.GetField;
        public const BindingFlags ProtectedGetField = BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField;
        public const BindingFlags GetProperty = BindingFlags.Instance | BindingFlags.Static | BindingFlags.Public | BindingFlags.GetProperty;
        public const BindingFlags SetProperty = BindingFlags.Instance | BindingFlags.Static | BindingFlags.Public | BindingFlags.SetProperty;
        public const BindingFlags InvokeMethod = BindingFlags.Instance | BindingFlags.Static | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.InvokeMethod;
    }
}
