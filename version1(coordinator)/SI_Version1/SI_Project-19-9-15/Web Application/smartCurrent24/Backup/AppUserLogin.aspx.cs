
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
    public partial class AppUserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                     
            // Check if the user is already loged in or not
            if ((Session["USER_NAME"] != null) && (Convert.ToBoolean(Session["USER_NAME"]) == true))
            {
                // If User is Authenticated then moved to a main page
                if (User.Identity.IsAuthenticated)
                    Response.Redirect("default.aspx");
                
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {                
            UserAuthentication appuser = new UserAuthentication();

               
            appuser.Username = this.txtEmailID.Text.Trim();
            appuser.UserPwd = this.txtPwd.Text.Trim();
                  
            int res = appuser.GetUser();

            appuser.Username= res.ToString();
            Session.Add("USER_NAME",res);

            Session.Add("EMAILID",this.txtEmailID.Text.Trim());
            Session.Add("PASS", this.txtPwd.Text.Trim());     
            

            
            
            

           

            if (res > 0)
            {
                Response.Redirect("User_Home.aspx");
                               
            }

            else
            {
                lblMessage.Text = "Wrong Email ID or password ! ";


            }
             
        }

        private void setA(string c)
        {
            throw new NotImplementedException();
        }
    }
    }




      