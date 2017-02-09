using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration; // system config from web
using System.Data.SqlClient;
using System.Collections;
using System.Web.Security;
using System.Web.UI;
using System.Data.Common;
using SmartIrrigationBusinessLayer;

namespace SmartIrrigation
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                lbl_date.Text = DateTime.Now.ToString();

                SqlConnection con = buildconn();

                SqlCommand cmd = new SqlCommand("sp_retrieve_username", con);


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

               lbl_n_i.Text = user_n;

                SqlConnection conn=buildconn();
               
                SqlCommand cmmd = new SqlCommand("sp_user_report", conn);


                cmmd.CommandType = CommandType.StoredProcedure;
                cmmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = A;
                cmmd.Parameters.Add("@UserPwd", SqlDbType.VarChar).Value = B;

                SqlDataAdapter ObjAdapter = new SqlDataAdapter();
                ObjAdapter.SelectCommand = cmmd;
                DataSet ObjDataSet = new DataSet();
                ObjAdapter.Fill(ObjDataSet);


                conn.Close();
                grd_user_detail.DataSource = ObjDataSet;
                grd_user_detail.DataBind();

                SqlConnection connn = buildconn();

                SqlCommand command = new SqlCommand("sp_average", connn);


                command.CommandType = CommandType.StoredProcedure;


                command.Parameters.Add("@UserName", SqlDbType.VarChar).Value = A;
                command.Parameters.Add("@UserPwd", SqlDbType.VarChar).Value = B;

                SqlDataAdapter Obj = new SqlDataAdapter();
                Obj.SelectCommand = command;
                DataSet DataSet = new DataSet();
                Obj.Fill(DataSet);

                conn.Close();
                grd_report.DataSource = DataSet;
                grd_report.DataBind();


                //SqlConnection connnn = buildconn();

                //SqlCommand cmmmd = new SqlCommand("sp_average_day", connnn);


                //cmmmd.CommandType = CommandType.StoredProcedure;

                //cmmmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = A;
                //cmmmd.Parameters.Add("@UserPwd", SqlDbType.VarChar).Value = B;
                //string a_day;


                //SqlParameter sqlparam1 = new SqlParameter("@USER_ID", SqlDbType.VarChar, 50);
                //SqlParameter sqlparam4 = new SqlParameter("@UserName", SqlDbType.VarChar, 500);
                //SqlParameter sqlparam5 = new SqlParameter("@UserPwd", SqlDbType.VarChar, 50);

                //// sqlparam1.Value = this.UserID;
                //sqlparam4.Value = A;
                //sqlparam5.Value = B;

                //ArrayList listt = new ArrayList();
                //list.Add(sqlparam1);
                //listt.Add(sqlparam4);
                //listt.Add(sqlparam5);

                //DBClass dbb = new DBClass();
                //a_day = dbb.ExecuteScalar("sp_average_day", listt).ToString();
                

                


            //    SqlConnection connnnn = buildconn();

            //    SqlCommand cmmmmd = new SqlCommand("sp_average_day", connnnn);


            //    cmmmd.CommandType = CommandType.StoredProcedure;

            //    cmmmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = A;
            //    cmmmd.Parameters.Add("@UserPwd", SqlDbType.VarChar).Value = B;
            //    string a_week;


            //    // SqlParameter sqlparam1 = new SqlParameter("@USER_ID", SqlDbType.VarChar, 50);
            //    SqlParameter sqlparam6 = new SqlParameter("@UserName", SqlDbType.VarChar, 500);
            //    SqlParameter sqlparam7 = new SqlParameter("@UserPwd", SqlDbType.VarChar, 50);

            //    //// sqlparam1.Value = this.UserID;
            //    sqlparam4.Value = A;
            //    sqlparam5.Value = B;

            //    ArrayList listtt = new ArrayList();
            //    //  list.Add(sqlparam1);
            //    listtt.Add(sqlparam6);
            //    listtt.Add(sqlparam7);

            //    DBClass dbbb = new DBClass();
            //    a_week = dbbb.ExecuteScalar("sp_average_week", listt).ToString();


            //    lbl_a_w.Text = a_week;
               
            }
            catch (Exception ex)
            {

            }
        }

            SqlConnection buildconn()
            {   SqlConnection conn = new SqlConnection();

                conn.ConnectionString = ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ToString();
                conn.Open();
                return conn;
            }

            protected void btn_graph_Click(object sender, EventArgs e)
            {
                Response.Redirect("Graph.aspx");
            }

            protected void grd_user_detail_SelectedIndexChanged(object sender, EventArgs e)
            {

            }

            protected void grd_report_SelectedIndexChanged(object sender, EventArgs e)
            {

            }

           
        }

        
    }
