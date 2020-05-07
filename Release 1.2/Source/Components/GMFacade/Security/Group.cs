namespace GMFacade.Security
{
    using System;
    using System.Data;
    using System.Collections.Generic;

    using GMUtilities;
    using GMConstants;    
    using GMBiz.Security;
    using GMUIDetail.Entity;
    using GMUtilities.Security;
    using GMDBDetail.Security;
    using GMUIDetail.Security;

    public class Group:Base.Base
    {
        #region Members
        GroupBiz m_biz = null;
        #endregion

        #region Constructor
        public Group():base()
        {
            m_biz = new GroupBiz();
        } 
        #endregion

        #region Security
        public void Get(Groups es)
        {
            try { es.DSMembers = m_biz.Get(); }
            catch (Exception exp) { throw exp; }
            finally {}
        }

        public void Get(DCGroup2 dcgrp)
        {
            try
            {
                GMUtilities.GMReflectionUtils.Copy(m_biz.Get(dcgrp.ID), dcgrp);
                dcgrp.DSUNSelected = m_optbiz.GetPermissions();
                if (dcgrp.ID.HasValue)
                    dcgrp.DSSelected = GMUtilities.DataUtils.DetachSelection(dcgrp.DSUNSelected, m_biz.GetPermissions(dcgrp.ID));
            }
            catch (Exception exp) { throw exp; }
            finally {}
        }

        public void Save(DCGroup2 dcgrp)
        {
            try
            {
                Group2Detail detgrp = new Group2Detail();
                GMUtilities.GMReflectionUtils.Copy(dcgrp, detgrp);
                m_biz.Save(detgrp);
            }
            catch (Exception exp)
            { throw exp; }
            finally {}
        }

        public void Delete(int ID)
        {
            try { m_biz.Delete(ID); }
            catch (Exception exp)
            { throw exp; }
            finally {}
        }
        #endregion

        #region Dispose
        public override void Dispose()
        {
            base.Dispose();
            m_biz.Dispose();
        }
        #endregion
    }
}
