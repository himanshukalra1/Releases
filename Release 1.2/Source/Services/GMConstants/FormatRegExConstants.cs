namespace GMConstants
{
    using System;
    public class FormatRegExConstants
    {
        public const string DecimalNumber = @"^[-]?\d+(\.\d+)?$";
        public const string EMail = @"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*";
        public const string Password = @"(?=^.{8,}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*()]*$";

        public const string Pincode = @"^\d{5}$|^\d{5}-\d{4}$";
        public const string CellPhone = @"^\(?(\d{3})\)?-?(\d{3})?-?(\d{4})$";
        public const string Landline = @"^\(?(\d{3})\)?-?(\d{3})?-?(\d{4})$";
        
    }
}
