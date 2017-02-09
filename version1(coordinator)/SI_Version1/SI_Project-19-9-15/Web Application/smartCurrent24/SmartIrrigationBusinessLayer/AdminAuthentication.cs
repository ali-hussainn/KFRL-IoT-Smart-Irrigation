using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
//using System.Web.Configuration;
using System.Data; // sql
using System.Configuration; // system config from web
using System.Data.SqlClient;
using System.Collections;
namespace SmartIrrigationBusinessLayer
{
   public class AdminAuthentication
    {
        private string _Username;
        public string Username
        {
            get { return _Username; }
            set { _Username = value; }
        }

        private string _UserPwd;
        public string UserPwd
        {
            get { return _UserPwd; }
            set { _UserPwd = value; }
        }

        private int _UserID;
        public int UserID
        {
            get { return _UserID; }
            set { _UserID = value; }
        }

        public int GetUser()
        {
            string test;
            int res;
            bool res1;
            // SqlParameter sqlparam1 = new SqlParameter("@USER_ID", SqlDbType.VarChar, 50);
            SqlParameter sqlparam2 = new SqlParameter("@UserName", SqlDbType.VarChar, 500);
            SqlParameter sqlparam3 = new SqlParameter("@password", SqlDbType.VarChar, 50);

            // sqlparam1.Value = this.UserID;
            sqlparam2.Value = this.Username;
            sqlparam3.Value = this.UserPwd;

            ArrayList list = new ArrayList();
            //  list.Add(sqlparam1);
            list.Add(sqlparam2);
            list.Add(sqlparam3);


            DBClass db = new DBClass();
            test = db.ExecuteScalar("spCheckAdminLogin", list).ToString();
            // int res = int.Parse(db.ExecuteScalar("spCheckUserLogin", list).ToString());
            res1 = Convert.ToBoolean(test);
            res = Convert.ToInt32(res1);
            return res;

        }
    }
}
