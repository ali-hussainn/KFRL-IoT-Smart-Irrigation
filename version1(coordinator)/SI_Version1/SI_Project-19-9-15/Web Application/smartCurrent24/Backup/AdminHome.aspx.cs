using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; // sql
using System.Configuration; // system config from web
using System.Data.SqlClient;
using System.Collections;
using System.Net.Mail;
using System.Net;
using System.IO;
using SmartIrrigationBusinessLayer;

namespace SmartIrrigation
{
    public partial class AdminHome : System.Web.UI.Page
    {

        protected void btnnot_Click(object sender, EventArgs e)
        {

        }

        protected void btnCurrent_Click(object sender, EventArgs e)
        {
            Response.Redirect("Current Status.aspx");



        }

        protected void btnw_c_Click(object sender, EventArgs e)
        {

            Response.Redirect("http://www.wunderground.com/cgi-bin/findweather/getForecast?brand=wxmap&query=24.905600,67.082199&zoom=5");

            //Response.Redirect("weather.aspx");
        }

        protected void btnm_r_Click(object sender, EventArgs e)
        {
            Response.Redirect("MaintenanceRecord.aspx");
        }

            protected void btnfield_info_Click(object sender, EventArgs e)
        {
            Response.Redirect("FieldsInformation.aspx");

        }
                
            protected void btna_u_Click(object sender, EventArgs e)
            {
                Response.Redirect("UserAuth.aspx");
            }

            protected void btnm_l_Click1(object sender, EventArgs e)
            {
                Response.Redirect("Fields.aspx");
            }

            protected void Page_Load(object sender, EventArgs e)
            {
                if (Session["S_ADMIN_NAME"] == null)
                    Response.Redirect("AdminLogin.aspx");
            }

       

     

       
        
    }



}