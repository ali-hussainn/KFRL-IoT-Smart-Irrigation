
using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Configuration; // system config from web
using System.Data.SqlClient;
using System.Collections;
using System.Web.Security;
using System.Web.UI;
using System.Data.Common;
using SmartIrrigationBusinessLayer;

namespace SmartIrrigation
{
    public partial class Real_Time_Data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              try
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ToString();
                connection.Open();
                SqlCommand command = new SqlCommand("sp_realtime_data", connection);

                command.CommandType = CommandType.StoredProcedure;

                string C = ((string)Session["EMAILID"]);
                string D = ((string)Session["PASS"]);

                command.Parameters.Add("@UserName", SqlDbType.VarChar).Value = C;
                command.Parameters.Add("@UserPwd", SqlDbType.VarChar).Value = D;

                command.Connection = connection;

                SqlDataAdapter ObjAdapter1 = new SqlDataAdapter();
                ObjAdapter1.SelectCommand = command;
                DataSet ObjDataSet1 = new DataSet();
                ObjAdapter1.Fill(ObjDataSet1);

                connection.Close();
                grd_rt_data.DataSource = ObjDataSet1;
                grd_rt_data.DataBind();

            }

            catch (Exception ex)
            {

            }
            try
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ToString();
                connection.Open();
                SqlCommand command = new SqlCommand("sp_realtime_data2", connection);

                command.CommandType = CommandType.StoredProcedure;

                string C = ((string)Session["EMAILID"]);
                string D = ((string)Session["PASS"]);

                command.Parameters.Add("@UserName", SqlDbType.VarChar).Value = C;
                command.Parameters.Add("@UserPwd", SqlDbType.VarChar).Value = D;

                command.Connection = connection;

                SqlDataAdapter ObjAdapter1 = new SqlDataAdapter();
                ObjAdapter1.SelectCommand = command;
                DataSet ObjDataSet1 = new DataSet();
                ObjAdapter1.Fill(ObjDataSet1);

                connection.Close();
                grd_rt_data1.DataSource = ObjDataSet1;
                grd_rt_data1.DataBind();

            }

            catch (Exception ex)
            {

            }
        }
    }
}