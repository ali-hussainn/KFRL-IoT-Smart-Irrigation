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
    public partial class Graph_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ToString();
                connection.Open();
                SqlCommand command = new SqlCommand("sp_graph_5", connection);

                command.CommandType = CommandType.StoredProcedure;

                string C = ((string)Session["EMAILID"]);
                string D = ((string)Session["PASS"]);

                command.Parameters.Add("@UserName", SqlDbType.VarChar).Value = C;
                command.Parameters.Add("@UserPwd", SqlDbType.VarChar).Value = D;

                command.Connection = connection;

                SqlDataAdapter ObjAdapter1 = new SqlDataAdapter();
                ObjAdapter1.SelectCommand = command;
                DataSet ObjDataSet1 = new DataSet();


                //string CmdString = "SELECT TOP 10 ProductName, UnitsInStock FROM Products WHERE UnitsInStock >0 ORDER BY ProductName DESC";
                //SqlDataAdapter sda = new SqlDataAdapter(CmdString, connection);
                ObjAdapter1.Fill(ObjDataSet1);
                e_t.DataSource = ObjDataSet1;
                e_t.Series["Series1"].XValueMember = "Time_Stamp";
                e_t.Series["Series1"].YValueMembers = "External_Temperature";
                e_t.DataBind();

                connection.Close();
            }
            catch (Exception ex)
            { }


            try
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ToString();
                connection.Open();
                SqlCommand command = new SqlCommand("sp_graph_6", connection);

                command.CommandType = CommandType.StoredProcedure;

                string C = ((string)Session["EMAILID"]);
                string D = ((string)Session["PASS"]);

                command.Parameters.Add("@UserName", SqlDbType.VarChar).Value = C;
                command.Parameters.Add("@UserPwd", SqlDbType.VarChar).Value = D;

                command.Connection = connection;

                SqlDataAdapter ObjAdapter1 = new SqlDataAdapter();
                ObjAdapter1.SelectCommand = command;
                DataSet ObjDataSet1 = new DataSet();


                //string CmdString = "SELECT TOP 10 ProductName, UnitsInStock FROM Products WHERE UnitsInStock >0 ORDER BY ProductName DESC";
                //SqlDataAdapter sda = new SqlDataAdapter(CmdString, connection);
                ObjAdapter1.Fill(ObjDataSet1);
                u_t.DataSource = ObjDataSet1;
                u_t.Series["Series1"].XValueMember = "Time_Stamp";
                u_t.Series["Series1"].YValueMembers = "Underground_Temperature";
                u_t.DataBind();

                connection.Close();
            }
            catch (Exception ex)
            { }
        }
    }
}