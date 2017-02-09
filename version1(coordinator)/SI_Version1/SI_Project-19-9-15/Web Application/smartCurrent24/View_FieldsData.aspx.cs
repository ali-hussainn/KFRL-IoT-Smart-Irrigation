
using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Configuration; // system config from web
using System.Data.SqlClient;
using System.Collections;
using System.Web.Security;
using System.Web.UI;
using SmartIrrigationBusinessLayer;

namespace SmartIrrigation
{
    public partial class View_FieldsData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ToString();
                conn.Open();

                SqlCommand cmd = new SqlCommand("sp_view_data", conn);


                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Connection = conn;
                SqlDataAdapter ObjAdapter = new SqlDataAdapter();
                ObjAdapter.SelectCommand = cmd;
                DataSet ObjDataSet = new DataSet();
                ObjAdapter.Fill(ObjDataSet);

                conn.Close();
                GridView2.DataSource = ObjDataSet;
                GridView2.DataBind();
            }
            catch (Exception ex)
            {

            }

        }
       
    }
}