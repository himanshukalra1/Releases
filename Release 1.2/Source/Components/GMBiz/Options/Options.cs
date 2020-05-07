namespace GMBiz.Options
{
    using System;
    using System.Data;

    using GMUtilities;
    using GMConstants;
    using GMDB.Options;
    using GMDBMap.Options;    

    public class OptionsBiz:IDisposable
    {
        #region Members
        private OptionsDB m_db;
        #endregion

        #region Constuctor
        public OptionsBiz()
        {
            m_db = new OptionsDB();
        }
        #endregion

        #region Private Methods
        private DataTable GetOptions(string procname, string tablename)
        {
            return m_db.GetOptions(procname, tablename);
        }

        public DataRow GetOptions(string procname, string tablename, int ID)
        {
            DataTable dt = GetOptions(procname, tablename);
            DataRow rv = null;
            DataRowCollection drc = dt.Rows;
            foreach (DataRow dr in drc)
            {
                if (string.Compare(dr[OptionsMap.Value].ToString(), ID.ToString(), true) == 0)
                {
                    rv = dr;
                    break;
                }
            }
            return rv;
        }
        #endregion

        #region Methods
        public DataTable GetDeparmentTypes()
        {
            return GetOptions(DepartmentTypeMap.ProcedureGet, OptionsMap.DepartmentType);
        }

        public DataTable GetEmployeeTypes(Int32? userid)
        {
            return m_db.GetOptions<Int32?>(GMDBMap.Security.User2Map.ID, userid, EmployeeTypeMap.ProcedureGet, OptionsMap.EmployeeType);
        }

        public DataTable GetPermissions()
        {
            return GetOptions(PermissionMap.ProcedureGet, OptionsMap.Permissions);
        }

        public DataTable GetStates()
        {
            return GetOptions(StateTypeMap.ProcedureGet, OptionsMap.StateType);
        }

        public DataTable GetPaymentTypes()
        {
            return GetOptions(PaymentTypeMap.ProcedureGet, OptionsMap.PaymentType);
        }

        public DataTable GetLevelTypes()
        {
            return GetOptions(LevelTypeMap.ProcedureGet, OptionsMap.Levels);
        }

        public DataTable GetPleaTypes()
        {
            return GetOptions(PleaTypeMap.ProcedureGet, OptionsMap.Plea);
        }

        public DataTable GetDispositionTypes()
        {
            return GetOptions(DispositionTypeMap.ProcedureGet, OptionsMap.Disposition);
        }

        public DataTable GetActionTypes()
        {
            return GetOptions(ActionTypeMap.ProcedureGet, OptionsMap.Action);
        }

        public DataTable GetCaseTypes()
        {
            return GetOptions(CaseTypeMap.ProcedureGet, OptionsMap.Case);
        }

        public DataTable GetRecordStatusTypes()
        {
            return GetOptions(RecordStatusTypeMap.ProcedureGet, OptionsMap.RecordStatus);
        }

        public DataRow GetCaseTypes(int ID)
        {
            return GetOptions(CaseTypeMap.ProcedureGet, OptionsMap.Case, ID);
        }

        public DataRow GetCounty(int ID)
        {
            return GetOptions(CountyMap.ProcedureGet, OptionsMap.Case, ID);
        }

        public DataTable GetContactTypes()
        {
            return GetOptions(ContactTypeMap.ProcedureGet, OptionsMap.ContactType);
        }

        public DataTable GetCounties()
        {
            return GetOptions(CountyMap.ProcedureGet, OptionsMap.County);
        }
        #endregion

        #region IDisposable Members
        public void Dispose()
        {
            m_db.Dispose();
        }
        #endregion
    }
}
