using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartIrrigation
{
    public partial class Sensors_View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_wlcm.Text = "Welcome to CIS Garden Monitoring System";
            lbl_wlcm.Font.Size = 20;
            

        }

        //protected void btn_et_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("Flow_Sensor.aspx");
       // }
  
        protected void btn_ut_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Underground_Temp.aspx");
        }

        protected void btn_s_ml1_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Soil_Moisture.aspx");
        }

        protected void btn_h_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Humidity.aspx");
        }

        protected void btn_f_r_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Flow_Sensor.aspx");
        }

        protected void btn_l_r_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Real_Time_Data.aspx");
        }

          
    }
}