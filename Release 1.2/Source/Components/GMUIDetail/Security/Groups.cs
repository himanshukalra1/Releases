namespace GMUIDetail.Security
{
    using System;
    using System.Data;
    using System.ServiceModel;
    using System.Runtime.Serialization;
    
    using GMUtilities.ClassAttrib;
    using GMUIDetail.Base;

    [DataContract]
    [SerializableAttribute()]
    [Handler(GMConstants.UIBinderHandlerConstants.Group2UB)]
    public class Groups:Entities
    {
    }
}
