using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartIrrigation
{
    public partial class Home1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Visible = false;
            Button2.Visible = false;

            if (Session["USER_NAME"] != null)
                Button1.Visible = true;
            else
            {
                Button1.Visible = false;
            }

            if (Session["S_ADMIN_NAME"] != null)
                Button2.Visible = true;
            else
            {
                Button2.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["USER_NAME"] = null;
            Session["EMAIL"] = null;
            Session["PWD"] = null;

            Button1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["S_ADMIN_NAME"] = null;
            Button2.Visible = false;
            Response.Redirect("default.aspx");
        }
    }
}