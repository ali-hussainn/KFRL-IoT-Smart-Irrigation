using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace SmartIrrigation
{
    public partial class UserAuth : System.Web.UI.Page
    {
        public SqlConnection con;
        public string query, query2;

        public void connection()
        {
            string constr = ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ToString();
            con = new SqlConnection(constr);
            con.Open();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string cncat = "table";
            string f = "field";
            cncat = "tbl_" + (TextBox1.Text.ToString());
            f = "field_" + (TextBox1.Text.ToString());

            connection();

            query = "sp_table_create";         //for create dynamic table
            SqlCommand comd = new SqlCommand(query, con); //for create dynamic table
            comd.CommandType = CommandType.StoredProcedure; //for create dynamic table
            comd.Parameters.AddWithValue("@TableName", cncat.ToString());
            comd.Parameters.AddWithValue("@FieldName", f.ToString());

            try
            {
                comd.ExecuteScalar();
                Label1.Text = "User " + (TextBox1.Text.ToString()) + " is authenticated";
                TextBox1.Text = "";
                Label1.Visible = true;
            }
            catch
            {
                con.Close();
                Label1.Visible = true;
                Label1.Text = "Invalid User";
            }
        }
    }
}