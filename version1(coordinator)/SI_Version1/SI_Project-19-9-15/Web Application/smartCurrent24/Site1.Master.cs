using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace darkthemes
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {

                //        if (Session["MemberType"].ToString() == "A".ToString())
                //        {
                //            LinkButton link0 = new LinkButton();
                //            link0.PostBackUrl = "AdminHome.aspx";
                //            link0.Text = "Home Page  ";
                //            Heading.Controls.Add(link0);
                //            LiteralControl LinCon0 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon0);

                //            LinkButton link1 = new LinkButton();
                //            link1.PostBackUrl = "AdminVehicleEngineCapacity.aspx";
                //            link1.Text = "Vehicle Engine Capacity ";
                //            Heading.Controls.Add(link1);
                //            //Dim br;
                //            LiteralControl LinCon1 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon1);

                //            LinkButton link2 = new LinkButton();
                //            link2.PostBackUrl = "AdminVehicleFuel.aspx";
                //            link2.Text = "Vehicle Fuel Consumption  ";
                //            Heading.Controls.Add(link2);
                //            LiteralControl LinCon2 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon2);

                //            LinkButton link3 = new LinkButton();
                //            link3.PostBackUrl = "AdminVehicleHorsePwr.aspx";
                //            link3.Text = "Vehicle Horse Power";
                //            Heading.Controls.Add(link3);
                //            LiteralControl LinCon3 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon3);

                //            LinkButton link4 = new LinkButton();
                //            link4.PostBackUrl = "AdminVehicleMaintenance.aspx";
                //            link4.Text = "Vehicle Maintenance";
                //            Heading.Controls.Add(link4);
                //            LiteralControl LinCon4 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon4);

                //            LinkButton link5 = new LinkButton();
                //            link5.PostBackUrl = "AdminVehicleMileage.aspx";
                //            link5.Text = "Vehicle Mileage";
                //            Heading.Controls.Add(link5);
                //            LiteralControl LinCon5 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon5);

                //            LinkButton link6 = new LinkButton();
                //            link6.PostBackUrl = "AdminVehicleTransmission.aspx";
                //            link5.Text = "Vehicle Transmission";
                //            Heading.Controls.Add(link6);
                //            //LiteralControl LinCon6 = new LiteralControl("<br/>");
                //            //Heading.Controls.Add(LinCon6);

                //            LinkButton link7 = new LinkButton();
                //            link7.PostBackUrl = "AdminVehicleType.aspx";
                //            link7.Text = "Vehicle Type";
                //            Heading.Controls.Add(link7);
                //            LiteralControl LinCon7 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon7);

                //            LinkButton link8 = new LinkButton();
                //            link8.PostBackUrl = "AdminVehicleYear.aspx";
                //            link8.Text = "Vehicle Year";
                //            Heading.Controls.Add(link8);
                //            LiteralControl LinCon8 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon8);

                //            LinkButton link9 = new LinkButton();
                //            link9.PostBackUrl = "AdminVhlBasicWarranty.aspx";
                //            link9.Text = "Vehicle Basic Warranty";
                //            Heading.Controls.Add(link9);
                //            LiteralControl LinCon9 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon9);

                //            LinkButton link10 = new LinkButton();
                //            link10.PostBackUrl = "AdminVhlPwrtrainWarranty.aspx";
                //            link10.Text = "Vehicle Powertrain Warranty";
                //            Heading.Controls.Add(link10);
                //            LiteralControl LinCon10 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon10);


                //            ImageButton img = new ImageButton();
                //            img.ID = "Image 1";
                //            img.ImageUrl = "~/img/audi-a7.jpg";
                //            img.Width = 200;
                //            images.Controls.Add(img);
                //        }



                //        else if (Session["MemberType"].ToString() == "M".ToString())
                //        {
                //            LinkButton link11 = new LinkButton();
                //            link11.PostBackUrl = "VehicleRegistration.aspx";
                //            link11.Text = "Vehicle Registration ";
                //            Heading.Controls.Add(link11);
                //            LiteralControl LinCon11 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon11);
                //            LiteralControl LinCon111 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon111);




                //            LinkButton link12 = new LinkButton();
                //            link12.PostBackUrl = "VehicleImage.aspx";
                //            link12.Text = "Vehicle Image ";
                //            Heading.Controls.Add(link12);
                //            LiteralControl LinCon12 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon12);
                //            LiteralControl LinCon112 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon112);


                //            LinkButton link13 = new LinkButton();
                //            link13.PostBackUrl = "VehicleExpense.aspx";
                //            link13.Text = "Vehicle Expense ";
                //            Heading.Controls.Add(link13);
                //            LiteralControl LinCon13 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon13);
                //            LiteralControl LinCon113 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon113);



                //            LinkButton link14 = new LinkButton();
                //            link14.PostBackUrl = "VehicleFuel.aspx";
                //            link14.Text = "Vehicle Fuel ";
                //            Heading.Controls.Add(link14);
                //            LiteralControl LinCon14 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon14);
                //            LiteralControl LinCon114 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon114);


                //            LinkButton link15 = new LinkButton();
                //            link15.PostBackUrl = "VehicleInsurance.aspx";
                //            link15.Text = "Vehicle Insurance ";
                //            Heading.Controls.Add(link15);
                //            LiteralControl LinCon15 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon15);
                //            LiteralControl LinCon115 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon115);


                //            LinkButton link16 = new LinkButton();
                //            link16.PostBackUrl = "VehicleTracker.aspx";
                //            link16.Text = "Vehicle Tracker ";
                //            Heading.Controls.Add(link16);
                //            LiteralControl LinCon16 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon16);
                //            LiteralControl LinCon116 = new LiteralControl("<br/>");
                //            Heading.Controls.Add(LinCon116);

                //        }

                //    }
                //}
            }
        }
    }
}

