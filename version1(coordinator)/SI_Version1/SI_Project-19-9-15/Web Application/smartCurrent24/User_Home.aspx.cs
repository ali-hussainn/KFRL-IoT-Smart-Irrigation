
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
    public partial class User_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbluser_name.Text = Convert.ToString(Session["EMAIL"]);


            try
            {
                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ToString();
                conn.Open();


                SqlCommand cmd = new SqlCommand("sp_retrieve_username", conn);


                cmd.CommandType = CommandType.StoredProcedure;
                string A = ((string)Session["EMAILID"]);
                string B = ((string)Session["PASS"]);

                cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = A;
                cmd.Parameters.Add("@UserPwd", SqlDbType.VarChar).Value = B;
                string user_n;


                // SqlParameter sqlparam1 = new SqlParameter("@USER_ID", SqlDbType.VarChar, 50);
                SqlParameter sqlparam2 = new SqlParameter("@UserName", SqlDbType.VarChar, 500);
                SqlParameter sqlparam3 = new SqlParameter("@UserPwd", SqlDbType.VarChar, 50);

                //// sqlparam1.Value = this.UserID;
                sqlparam2.Value = A;
                sqlparam3.Value = B;

                ArrayList list = new ArrayList();
                //  list.Add(sqlparam1);
                list.Add(sqlparam2);
                list.Add(sqlparam3);

                DBClass db = new DBClass();
                user_n = db.ExecuteScalar("sp_retrieve_usename", list).ToString();

                lbluser_name.Text = user_n;



                SqlCommand cmmd = new SqlCommand("sp_UserHome", conn);


                cmmd.CommandType = CommandType.StoredProcedure;

                cmmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = A;
                cmmd.Parameters.Add("@UserPwd", SqlDbType.VarChar).Value = B;

                cmmd.Connection = conn;
                SqlDataAdapter ObjAdapter = new SqlDataAdapter();
                ObjAdapter.SelectCommand = cmmd;
                DataSet ObjDataSet = new DataSet();
                ObjAdapter.Fill(ObjDataSet);


                conn.Close();
                grd_User_home.DataSource = ObjDataSet;
                grd_User_home.DataBind();
                

                conn.Close();
            }

                 catch (Exception ex)
            {

            }

                try
                {
                    SqlConnection connection = new SqlConnection();
                    connection.ConnectionString = ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ToString();
                    connection.Open();
                    SqlCommand command = new SqlCommand("sp_valve", connection);

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
                    grd_valve_status.DataSource = ObjDataSet1;
                    grd_valve_status.DataBind();

                }

                catch (Exception ex)
                {

                }

                try
                {

                    SqlConnection connection = new SqlConnection();
                    connection.ConnectionString = ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ToString();
                    connection.Open();
                    SqlCommand command = new SqlCommand("sp_valve_status", connection);

                    string test1;
                    bool res2;
                 
                    command.CommandType = CommandType.StoredProcedure;
         
                   
                    // SqlParameter sqlparam1 = new SqlParameter("@USER_ID", SqlDbType.VarChar, 50);
                    SqlParameter sqlparam2 = new SqlParameter("@UserName", SqlDbType.VarChar, 500);
                    SqlParameter sqlparam3 = new SqlParameter("@UserPwd", SqlDbType.VarChar, 50);

                    // sqlparam1.Value = this.UserID;
                    sqlparam2.Value = ((string)Session["EMAILID"]);
                    sqlparam3.Value = ((string)Session["PASS"]);
                    ArrayList list = new ArrayList();
                    //  list.Add(sqlparam1);
                    list.Add(sqlparam2);
                    list.Add(sqlparam3);


                    DBClass db = new DBClass();
                    test1 = db.ExecuteScalar("sp_valve_status", list).ToString();
                    // int res = int.Parse(db.ExecuteScalar("spCheckUserLogin", list).ToString());
                    res2 = Convert.ToBoolean(test1);
                    if (res2 == true)
                        lbl_valve.Text = "ON";
                    else lbl_valve.Text = "OFF";             
                                        
                                            
                }

                catch (Exception ex)
                {

                }
            
            
            }

        protected void btn_valve_Click(object sender, EventArgs e)
        {

        }

        protected void btn_g_r_Click(object sender, EventArgs e)
        {
           Response.Redirect("Report.aspx");

        }

        protected void btn_sensor_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sensors_View.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Real_Time_Data.aspx");
        }
        
      
           
        }

    }
    