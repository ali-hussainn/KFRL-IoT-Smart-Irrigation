using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SmartIrrigationBusinessLayer;

namespace SmartIrrigation
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the user is already loged in or not
            if ((Session["S_ADMIN_NAME"] != null) && (Convert.ToBoolean(Session["S_ADMIN_NAME"]) == true))
            {
                // If User is Authenticated then moved to a main page
                if (User.Identity.IsAuthenticated)
                    Response.Redirect("AdminHome.aspx");
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            AdminAuthentication appuser = new AdminAuthentication();

            appuser.Username = this.txtEmailID.Text.Trim();
            appuser.UserPwd = this.txtPwd.Text.Trim();

            int res = appuser.GetUser();
            appuser.Username = res.ToString();

            Session.Add("EMAIL", this.txtEmailID.Text.Trim());
            Session.Add("PWD", this.txtPwd.Text.Trim());
            Session.Add("S_ADMIN_NAME", res);

            if (res > 0)
                Response.Redirect("AdminHome.aspx");
            else
            {
                lblMessage.Text = "Wrong Email ID or password ! ";
            }
        }
    }
}