using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartIrrigation
{
    public partial class FieldsInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_view_data_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_FieldsData.aspx");
        }

        protected void btn_enter_data_Click(object sender, EventArgs e)
        {
            Response.Redirect("Enter_Fields_Data.aspx");

        }
    }
}