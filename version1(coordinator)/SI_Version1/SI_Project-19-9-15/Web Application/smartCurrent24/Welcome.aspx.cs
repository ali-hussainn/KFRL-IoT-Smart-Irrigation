using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartIrrigation
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void img_welcome_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Sensors_View.aspx");
        }
    }
}