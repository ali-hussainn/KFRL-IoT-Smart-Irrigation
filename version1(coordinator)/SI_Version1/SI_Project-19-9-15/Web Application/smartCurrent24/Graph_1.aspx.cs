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
    public partial class Graph : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ToString();
                connection.Open();
                SqlCommand command = new SqlCommand("sp_graph_1", connection);

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
                soil_m_1.DataSource = ObjDataSet1;
                soil_m_1.Series["Series1"].XValueMember = "Time_Stamp";
                soil_m_1.Series["Series1"].YValueMembers = "Soil_Moisture_Level1";
                soil_m_1.DataBind();

                connection.Close();
            }
            catch (Exception ex)
            { }


            try
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ToString();
                connection.Open();
                SqlCommand command = new SqlCommand("sp_graph_2", connection);

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
                soil_m_2.DataSource = ObjDataSet1;
                soil_m_2.Series["Series1"].XValueMember = "Time_Stamp";
                soil_m_2.Series["Series1"].YValueMembers = "Soil_Moisture_Level2";
                soil_m_2.DataBind();

                connection.Close();
            }
            catch (Exception ex)
            { }
        }
    }
}