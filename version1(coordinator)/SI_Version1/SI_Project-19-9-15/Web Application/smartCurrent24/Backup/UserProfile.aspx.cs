using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; // sql
using System.Configuration; // system config from web
//using TransWorld.DB;
using System.Data.SqlClient;
using System.Collections;
//using TWBusinessLayer;

namespace SmartIrrigation
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            {
              //  string strError;
             //   DataTable DT;
                int user_id;
                user_id = Convert.ToInt32(Session["USER_ID"].ToString());

                if (Session["USER_ID"] != null)
                {
                    //if (TWBusinessLayer.AppUsers.GetUserByUser_ID(user_id, out DT, out strError))
                    //{
                    //    PopulateControls(DT);
                    //}
                    //else
                    //    lblMessage.Text = strError;
                }
            }


        }

        private void PopulateControls(DataTable pDT)
        {
            if (pDT.Rows.Count > 0)
            {
                int user_id;
                user_id = Convert.ToInt32(Session["USER_ID"].ToString());

                if (Session["USER_ID"] != null)
                {

                    lblEmailID.Text = pDT.Rows[0]["EMAIL_ID"].ToString();
                    lblFirstName.Text = pDT.Rows[0]["U_FIRSTNAME"].ToString();
                    lblLastName.Text = pDT.Rows[0]["U_LASTNAME"].ToString();
                    lblDOB.Text = pDT.Rows[0]["DATE_OF_BIRTH"].ToString();
                    lblCountry.Text = pDT.Rows[0]["COUNTRY_NAME"].ToString();
                    lblCity.Text = pDT.Rows[0]["CITY_NAME"].ToString();
                    lblZipCode.Text = pDT.Rows[0]["ZIP_CODE"].ToString();
                    lblCurrencyName.Text = pDT.Rows[0]["CURRENCY_NAME"].ToString();
                    lblMobileNo.Text = pDT.Rows[0]["MOBILE_NO"].ToString();
                }
                Session["USER_ID"] = user_id;
            }
        }


        protected void btnEdit_Click(object sender, EventArgs e)
        {
            string User_Id;
            User_Id = Session["USER_ID"].ToString();

            Response.Redirect("AppUserRegistration.aspx?USER_ID=" + User_Id);

        }
    }
}