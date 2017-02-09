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
    public partial class Current_Status : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnv_f_d_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ToString();
                conn.Open();

                SqlCommand cmd = new SqlCommand("sp_view_current_data", conn);


                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Field_ID", SqlDbType.VarChar).Value = this.txtfield_id.Text;

                cmd.Connection = conn;
                SqlDataAdapter ObjAdapter = new SqlDataAdapter();
                ObjAdapter.SelectCommand = cmd;
                DataSet ObjDataSet = new DataSet();
                ObjAdapter.Fill(ObjDataSet);

                conn.Close();
                C_sGridView1.DataSource = ObjDataSet;
                C_sGridView1.DataBind();

            }
            catch (Exception ex)
            {

            }
        }
    }
}