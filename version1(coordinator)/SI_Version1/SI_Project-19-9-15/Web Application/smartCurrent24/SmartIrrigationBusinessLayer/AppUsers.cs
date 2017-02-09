using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Data; // sql
using System.Configuration; // system config from web
using System.Data.SqlClient;
using System.Collections;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using System.Data.Common;

namespace SmartIrrigationBusinessLayer
{
   public static class AppUsers
    {


       public static bool InsertAppUser(string pstrEmailID, string pstrPassword, string pstrConfirmPassword, string pstrFirstName, string pstrLastName, DateTime pstrDOB, int pstrZipCode, string pstrUserAdd, out int pstrUserID, out string pstrUnEmailID, out string pstrError)
       {
           pstrUserID = 0;
           pstrUnEmailID = "";
           pstrError = "";
           try
           {
               SqlDatabase DB = new SqlDatabase(Configurations.GetConnectionString(""));
               DbCommand DBC = DB.GetStoredProcCommand("spInsertAppUser");
               DB.AddInParameter(DBC, "@EmailID", SqlDbType.VarChar, pstrEmailID);
               DB.AddInParameter(DBC, "@ConfirmPwd", SqlDbType.VarChar, pstrConfirmPassword);
               DB.AddInParameter(DBC, "@FirstName", SqlDbType.VarChar, pstrFirstName);
               DB.AddInParameter(DBC, "@LastName", SqlDbType.VarChar, pstrLastName);
               DB.AddInParameter(DBC, "@DOB", SqlDbType.Date, pstrDOB);
               DB.AddInParameter(DBC, "@ZipCode", SqlDbType.Int, pstrZipCode);
               DB.AddInParameter(DBC, "@UserAdd", SqlDbType.VarChar, pstrUserAdd);
               DB.AddInParameter(DBC, "@UserName", SqlDbType.VarChar, pstrEmailID);
               DB.AddInParameter(DBC, "@UserPwd", SqlDbType.VarChar, pstrPassword);

            //   DB.AddOutParameter(DBC, "@UserID", SqlDbType.Int, 4);
               DB.AddOutParameter(DBC, "@UNEMAIL_ID", SqlDbType.VarChar, 50);
               DB.ExecuteNonQuery(DBC);
               //test = db.ExecuteScalar("spCheckUserLogin", list).ToString();
               //// int res = int.Parse(db.ExecuteScalar("spCheckUserLogin", list).ToString());
               //res1 = Convert.ToBoolean(test);
               //string test = DBC.Parameters["@UserID"].ToString();
               //pstrUserID = Convert.ToInt32(test);
            //  pstrUserID = Convert.ToInt32(DBC.Parameters["@UserID"]);
               pstrUnEmailID = DBC.Parameters["@UNEMAIL_ID"].ToString();
               return true;
           }
           catch (Exception ex)
           {
               pstrError = ex.Message;
               return false;
           }
       }

       public static bool GetUserByUser_ID(int pintUser_ID, out DataTable pdtResult, out string pstrError)
       {
           pdtResult = null;
           pstrError = "";
           try
           {
               SqlDatabase DB = new SqlDatabase(Configurations.GetConnectionString(""));
               DbCommand DBC = DB.GetStoredProcCommand("GetUserInfo");
               DB.AddInParameter(DBC, "@UserID", SqlDbType.Int, pintUser_ID);
               DataSet DS = DB.ExecuteDataSet(DBC);
               if (DS == null || DS.Tables.Count <= 0)
               {
                   pstrError = "Nothing returned from DB";
                   return false;
               }
               pdtResult = DS.Tables[0];
               return true;
           }
           catch (Exception ex)
           {
               pstrError = ex.Message;
               return false;
           }
       }

    }
}
