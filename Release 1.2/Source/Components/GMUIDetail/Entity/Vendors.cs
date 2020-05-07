namespace GMUIDetail.Entity
{
    using System;
    using System.Data;
    using System.ServiceModel;
    using System.Runtime.Serialization;

    using GMUIDetail.Base;
    using GMUtilities.ClassAttrib;

    [DataContract]
    [SerializableAttribute()]
    [Handler(GMConstants.UIBinderHandlerConstants.VendorUB)]
    public class Vendors:Entities
    {
    }
}
