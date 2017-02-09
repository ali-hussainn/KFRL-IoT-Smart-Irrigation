<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="map.aspx.cs" Inherits="WebApplication2.map" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
</script>

<script>
var myCenter=new google.maps.LatLng(24.932324, 67.112689);

var pos=new google.maps.LatLng(24.932859, 67.111410);

    function initialize() {
        var mapProp = {
            center: myCenter,
            zoom: 17,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("googleMap")
  , mapProp);
  
  var CIS=new google.maps.Marker({
  position:pos,
  });

CIS.setMap(map);

var infoKFRL = new google.maps.InfoWindow({
  content:"KFRL Lab here"
  });

google.maps.event.addListener(CIS, 'click', function() {
  infoKFRL.open(map,CIS);

  window.setTimeout(function(){ infoKFRL.close(map,CIS);},3000)

  });

var NED=new google.maps.Marker({
  position:myCenter,
  });

NED.setMap(map);

var infoNED = new google.maps.InfoWindow({
  content:"Engineers created here"
  });

google.maps.event.addListener(NED, 'click', function() {
  infoNED.open(map,NED);

  window.setTimeout(function(){ infoNED.close(map,NED);},3000)

  });

    }

    google.maps.event.addDomListener(window, 'load', initialize);
</script>

</head>
<body>
    <form id="form1" runat="server">
    <div>

    <div id="googleMap" style="width:1000px;height:550px;"></div>

    </div>
    </form>
    <p>
        Click and drag to move the map. Use the scroller to zoom in an out.&nbsp; :)
    </p>
    <p style="margin-left: 80px">
        Have fun ;)</p>
</body>
</html>
