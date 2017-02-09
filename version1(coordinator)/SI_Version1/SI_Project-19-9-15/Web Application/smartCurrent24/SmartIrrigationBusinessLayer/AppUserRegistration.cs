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
    public class AppUserRegistration
    {
        private int _UserID;

        public int UserID
        {
            get { return _UserID; }
            set { _UserID = value; }
        }
        private string _EmailID;

        public string EmailID
        {
            get { return _EmailID; }
            set { _EmailID = value; }
        }

        private string _UserPwd;

        public string UserPwd
        {
            set { _UserPwd = value; }
            get { return _UserPwd; }
        }

        private string _FirstName;

        public string FirstName
        {
            set { _FirstName = value; }
            get { return _FirstName; }
        }

        private string _LastName;

        public string LastName
        {
            set { _LastName = value; }
            get { return _LastName; }
        }
        private DateTime _DOB;

        public DateTime DOB
        {
            set { _DOB = value; }
            get { return _DOB; }
        }

        private int _ZipCode;

        public int ZipCode
        {
            set { _ZipCode = value; }
            get { return _ZipCode; }
        }

        private string _UserAddress;

        public string UserAddress
        {
            set { _UserAddress = value; }
            get { return _UserAddress; }
        }

        public int InsertUser()
        {
            SqlParameter sqlparam1 = new SqlParameter("@EmailID", SqlDbType.VarChar, 50);
            SqlParameter sqlparam2 = new SqlParameter("@UserPwd", SqlDbType.VarChar, 50);
            SqlParameter sqlparam3 = new SqlParameter("@FirstName", SqlDbType.VarChar, 50);
            SqlParameter sqlparam4 = new SqlParameter("@LastName", SqlDbType.VarChar, 50);
            SqlParameter sqlparam5 = new SqlParameter("@DOB", SqlDbType.DateTime);
            SqlParameter sqlparam6 = new SqlParameter("@UserAdd", SqlDbType.VarChar, 50);
            SqlParameter sqlparam7 = new SqlParameter("@ZipCode", SqlDbType.Int);

            sqlparam1.Value = this.EmailID;
            sqlparam2.Value = this.UserPwd;
            sqlparam3.Value = this.FirstName;
            sqlparam4.Value = this.LastName;
            sqlparam5.Value = this.DOB;
            sqlparam6.Value = this.UserAddress;
            sqlparam7.Value = this.ZipCode;


            ArrayList list = new ArrayList();

            list.Add(sqlparam1);
            list.Add(sqlparam2);
            list.Add(sqlparam3);
            list.Add(sqlparam4);
            list.Add(sqlparam5);
            list.Add(sqlparam6);
            list.Add(sqlparam7);

            DBClass db = new DBClass();
            db.IsOutput = true;
            //   db.OutputParamName = "@UserId";
            int res = db.insertData("spInsertUser", list);
            return res;


        }
    }
}
