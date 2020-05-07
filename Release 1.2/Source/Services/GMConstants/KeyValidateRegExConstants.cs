namespace GMConstants
{
    using System;
    public class KeyValidateRegExConstants
    {
        public const string Number = @"^([0-9])$";
        public const string Date = @"^([0-9/])$";
        public const string NegativeNumber = @"^([0-9-])$";
        public const string DecimalNumber = @"^([0-9.])$";
        public const string NegativeDecimalNumber = @"^([0-9.-])$";
        public const string EMail = @"^([a-zA-Z0-9@.]{1,255})$";
        public const string CellPhone = @"^([0-9- ]{1,15})$"; 
        public const string Landline = @"^([0-9- ]{1,15})$";
        public const string Pincode = @"^([0-9- ]{1,15})$";
        public const string Password = @"^([a-zA-Z0-9~!@#$%^&*()+=])$";
    }
}
