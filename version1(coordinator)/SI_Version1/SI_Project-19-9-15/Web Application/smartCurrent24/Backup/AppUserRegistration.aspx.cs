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
    public partial class AppUser_Registration : System.Web.UI.Page

    {
        public int UserID
        {
            get
            {
                if (ViewState["UserID"] == null)
                    return -1;
                else
                    return int.Parse(ViewState["UserID"].ToString());
            }
            set { ViewState["UserID"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string strError;
                DataTable DT;

                try
                {
                    int UserID = Convert.ToInt32(Session["UserID"].ToString());
                    if (Session["UserID"] == null)
                    {
                        AppUsers.GetUserByUser_ID(UserID, out  DT, out strError);
                        PopulateData(DT);
                    }
                }

                catch (Exception ex)
                {
                }

            }
           
         }

        private void InsertAppUser()
        {
            int UserID;
            string UnEmailID;
            string Error;

            if (SmartIrrigationBusinessLayer.AppUsers.InsertAppUser(txtEmailID.Text, txtPassword.Text, txtConfirmPwd.Text, txtName.Text, txtLastName.Text, Convert.ToDateTime(txtDateOfBirth.Text),  int.Parse(txtZipCode.Text),txtAddress.Text , out UserID, out UnEmailID, out Error))
            {
                //mail(txtName.Text, txtEmailID.Text);
                sendToGmail(txtEmailID.Text);
                ClearControls();

                lblMessage.Text = "You are registered now. A verification mail has also been sent to your Email address";
            }

            else
                lblMessage.Text = Error;
        }
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            InsertAppUser();
            //Response.Redirect("AppUserLogin.aspx");

        }

        private void ClearControls()
        {
            txtEmailID.Text = "";
            txtPassword.Text = "";
            txtConfirmPwd.Text = "";
            txtName.Text = "";
            txtLastName.Text = "";
            txtDateOfBirth.Text = "";
            txtZipCode.Text = "";
            txtAddress.Text = "";
          
        }

        private void PopulateData(DataTable DT)
        {
            if (DT.Rows.Count > 0)
            {
                txtEmailID.Text = DT.Rows[0]["EmailID"].ToString();
                txtPassword.Text = DT.Rows[0]["USER_PWD"].ToString();
                txtConfirmPwd.Text = DT.Rows[0]["CONFIRM_PWD"].ToString();
                txtName.Text = DT.Rows[0]["FirstName"].ToString();
                txtLastName.Text = DT.Rows[0]["LastName"].ToString();
                txtDateOfBirth.Text = DT.Rows[0]["DOB"].ToString();
                txtZipCode.Text = DT.Rows[0]["ZipCode"].ToString();
                txtAddress.Text = DT.Rows[0]["UserAdd"].ToString();
            }
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        public void sendToGmail(string emailto)
        {

            var client = new SmtpClient("smtp.gmail.com", 587)
            {
                Credentials = new NetworkCredential("smartirrigation4pakistan@gmail.com", "darakhshan349"),
                EnableSsl = true
            };

           //client.Send("smartirrigation4pakistan@gmail.com", emailto, "Registered User", "You are now an authorized user and can get notifications about your field on this email address");
            try
            {
                client.Send("smartirrigation4pakistan@gmail.com", emailto, "Registered User", "You are now an authorized user and can get notifications about your field on this email address");
           
            }
            catch (Exception ex)
            {
                //Handle your exception here
                lblMessage.Text = "Oops, something went wrong when we tried to send the email";
                return;
            } 
        }
    }
}

