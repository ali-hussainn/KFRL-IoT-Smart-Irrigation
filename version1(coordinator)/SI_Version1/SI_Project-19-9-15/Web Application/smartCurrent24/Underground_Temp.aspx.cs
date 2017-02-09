using System.Data;
using System.Configuration; // system config from web
using System.Data.SqlClient;
using System.Collections;
using System.Web.Security;
using System.Web.UI;
using System.Data.Common;
using SmartIrrigationBusinessLayer;
using System;
using System.Collections.Generic;
using System.Linq;

namespace SmartIrrigation
{
    public partial class Underground_Temp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ToString();
                conn.Open();

                string A = ((string)Session["EMAILID"]);
                string B = ((string)Session["PASS"]);


                SqlCommand cmd = new SqlCommand("sp_u_t", conn);


                cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = A;
                cmd.Parameters.Add("@UserPwd", SqlDbType.VarChar).Value = B;
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Connection = conn;
                SqlDataAdapter ObjAdapter = new SqlDataAdapter();
                ObjAdapter.SelectCommand = cmd;
                DataSet ObjDataSet = new DataSet();
                ObjAdapter.Fill(ObjDataSet);
                grd_u_t.DataSource = ObjDataSet;
                grd_u_t.DataBind();


                conn.Close();
            }

            catch (Exception ex)
            {

            }

        }
    }
}