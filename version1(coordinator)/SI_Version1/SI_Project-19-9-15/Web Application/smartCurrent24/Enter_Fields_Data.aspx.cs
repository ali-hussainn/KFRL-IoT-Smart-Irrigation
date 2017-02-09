
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
using System.Globalization;


namespace SmartIrrigation
{
    public partial class Enter_Fields_Data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_enter_d_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ToString();
                conn.Open();

                SqlCommand cmd = new SqlCommand("sp_field_info", conn);


                cmd.CommandType = CommandType.StoredProcedure;
               
               // DateTime date = DateTime.ParseExact(txtd_i.Text, "dd/mm/yyyy", null);


               //// string date = this.txtd_i.Text.ToString();

                 cmd.Parameters.Add("@User_ID", SqlDbType.Int).Value = this.txtu_ID.Text;
                cmd.Parameters.Add("@Field_ID", SqlDbType.VarChar).Value = this.txtf_ID.Text;
                cmd.Parameters.Add("@Field_Location", SqlDbType.VarChar).Value = this.txtf_l.Text;
                cmd.Parameters.Add("@Number_of_Nodes", SqlDbType.Int).Value = this.txtn_n.Text;
                cmd.Parameters.Add("@Communication_Type", SqlDbType.VarChar).Value = this.txtc_t.Text;
                cmd.Parameters.Add("@Installation_Details", SqlDbType.VarChar).Value = this.txti_d.Text;
                cmd.Parameters.Add("@Date_of_Installation", SqlDbType.VarChar).Value = this.txtd_i.Text;
                cmd.Parameters.Add("@Team_Members", SqlDbType.VarChar).Value = this.txtt_m.Text;
                cmd.Parameters.Add("@Farmer_Name", SqlDbType.VarChar).Value = this.txtf_n.Text;
                cmd.Parameters.Add("@CNIC_Farmer", SqlDbType.Int).Value = this.txtf_c.Text;
                cmd.ExecuteNonQuery();
                conn.Close();

            }
            catch (Exception ex)
            {

            }
        }

        

     
    }
}