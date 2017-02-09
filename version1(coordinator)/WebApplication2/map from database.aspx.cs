using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class map_from_database : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string markers = GetMarkers();
            Literal1.Text = @"
     <script type='text/javascript'>
     function initialize() {
 
     var mapOptions = {
     center: new google.maps.LatLng(28.3213, 77.5435),
     zoom: 2,
     mapTypeId: google.maps.MapTypeId.ROADMAP
     };
 
     var myMap = new google.maps.Map(document.getElementById('mapArea'),
     mapOptions);"
            + markers +
            @"}
     </script>";
        }

        protected string GetMarkers()
        {
            string markers = "";
            using (SqlConnection con = new
            SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Constring"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT Latitude, Longitude, City FROM Locations", con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                int i = 0;

                while (reader.Read())
                {
                    i++;
                    markers +=
                    @"var marker" + i.ToString() + @" = new google.maps.Marker({
              position: new google.maps.LatLng(" + reader["Latitude"].ToString() + ", " +
                    reader["Longitude"].ToString() + ")," +
                    @"map: myMap,
              title:'" + reader["City"].ToString() + "'});";
                }
            }
            return markers;
        }
    }
}