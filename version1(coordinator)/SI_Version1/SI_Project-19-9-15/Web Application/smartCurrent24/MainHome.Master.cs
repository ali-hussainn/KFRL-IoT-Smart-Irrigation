using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartIrrigation
{
    public partial class MainHome1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ImageButton img = new ImageButton();
            img.ID = "Image";
            img.ImageUrl = "~/img/2011-audi.jpg";
            img.Width = 200;
            member.Controls.Add(img);
        }
    }
}