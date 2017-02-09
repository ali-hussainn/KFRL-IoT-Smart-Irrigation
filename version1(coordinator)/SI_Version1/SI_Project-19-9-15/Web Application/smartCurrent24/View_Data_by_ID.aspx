<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.Master" CodeBehind="View_Data_by_ID.aspx.cs" Inherits="SmartIrrigation.View_Data_by_ID" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            text-align: justify;
        }
        .style2
        {
            font-family: "Times New Roman", Times, serif;
        }
        .style3
        {
            font-size: medium;
        }
        .style5
        {
            color: #800000;
            font-weight: bold;
            font-size: x-large;
        }
        .style6
        {
            font-size: large;
            font-family: "Times New Roman", Times, serif;
        }
        .style7
        {
            font-size: medium;
            font-family: "Times New Roman", Times, serif;
        }
        .style8
        {
            font-size: large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div style="clear: both;">
</div>
<div id="header2">
    <div class="wrap">
        <div id="slide-holder">
            <div id="slide-runner">
                <a href=""><img id="slide-img-1" src="img/Capture.JPG" class="slide" alt="" /></a>
                <a href=""><img id="slide-img-2" src="img/Capture1.jpg" class="slide" alt="" /></a>
                <a href=""><img id="slide-img-3" src="img/Capture3.jpg" class="slide" alt="" /></a>
                <a href=""><img id="slide-img-4" src="img/Capture4.jpg" class="slide" alt="" /></a>
                <a href=""><img id="slide-img-5" src="img/Capture5.jpg" class="slide" alt="" /></a>
                <a href=""><img id="slide-img-6" src="img/Capture6.jpg" class="slide" alt="" /></a>
	       <%--     <a href=""><img id="slide-img-7" src="img/LongHauler.jpg" class="slide" alt="" /></a> --%>
                <div id="slide-controls">
                    <p id="slide-client" class="text">
                        <strong></strong><span></span>
                    </p>
                    <p id="slide-desc" class="text">
                    </p>
                    <p id="slide-nav">
                    </p>
                </div>
            </div>
	
	<!--content featured gallery here -->
            <div>
   <script type="text/javascript">
       if (!window.slider) var slider = {}; slider.data = [{ "id": "slide-img-1", "client": "", "desc": "" }, { "id": "slide-img-2", "client": "", "desc": "" }, { "id": "slide-img-3", "client": "", "desc": "" }, { "id": "slide-img-4", "client": "", "desc": "" }, { "id": "slide-img-5", "client": "", "desc": "" }, { "id": "slide-img-6", "client": "", "desc": ""}];
   </script>
            </div>
        </div>
        <!--/header-->
</div>
</div>
</asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <p class="style1">
        <span class="style2"><span class="style3">
        <br />
        </span>
        <span class="style5">SMART APPLICATION FOR SMART AGRICULTURE</span></span><span><span class="style2"><span 
            class="style3">  </span></span></span></p>
               <div class="style6"><strong>ABSTRACT </strong> </div>
    <p class="style1">
        <span><span class="style2"><span 
            class="style3">Use of Smart Irrigation in different areas of Pakistan to get numerous benefits is itself a valuable concept. 
            The focus of this application is to get information from the Wireless Sensor Network (WSN) that employs various sensors to acquire different environmental parameters. 
            It performs processing and takes decision if there is a need of watering the crops.   </span></span>&nbsp;</span></p>
          
           <p class="style1">
        <span><span class="style2"><span 
            class="style3">  The pumps are switched ON/OFF as and when necessary. It also defines the proper quantity of water to be provided. The history log is uploaded onto the server to take intelligent decisions, where it will be shared through the handheld sets for monitoring. The user will be updated about the water level in farms and can manually control the irrigation system too. 
            </span></span>&nbsp;</span></p>
          
          
          
          <p class="style1">
        <span><span class="style2"><span 
            class="style3">Through this Smart application the combination of emerging technologies including ubiquitous computing with sensor network can be applied on agriculture domain to make the agriculture smarter. 

 </span></span>&nbsp;</span></p>
          
             <div class="style7">
                 <strong><span class="style8">GOALS&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </strong></div>


        <span><span class="style2"><span class="style3">
            The major goals of this application are:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <br />
• Facilitate the development of infrastructure schemes to reduce the risks of water shortages in the agriculture sector.<br />
    <br />
    • Development and implementation of an intelligent agriculture development to strengthen the crops productivity.
    <br />
    <br />
    •	Development and enhancement of farmer decision support tools..<br />
&nbsp;<br />
    •	 Enable the farmers to balance nutrient management, improve productivity and save water.
    <br />
    <br />
    •	Introduces a sustainable approach to food production.
</span></span>&nbsp;<br />
    <br />
    <br />
    </span>






&nbsp;&nbsp;

  
<div style="text-align:center">
  

<p style="text-align:center">

 <a title="Home" style="font-family:Arial; font-size:10pt" 
        href="http://localhost:53443/default.aspx">
  <span style= "font-size:2; color: #0000FF">Home</span></a><span style= "font-size:2 ;color:#0000FF">&nbsp;|&nbsp;</span>

<a title="About Us" style="font-family:Arial; font-size:10pt" 
        href="http://localhost:53443/about.aspx">

 <span style= "font-size:2;color: #0000FF">About Us</span></a><span style="font-size:2 ; color:#0000FF">&nbsp;|&nbsp;</span>


<a title="Terms Of Services" style="font-family:Arial; font-size:10pt" 
        href="http://localhost:53443/Termsofservices.aspx">
<span style= "font-size:2; color: #0000FF">Terms Of Services</span></a><span style= "font-size:2; color: #0000FF"">&nbsp;|&nbsp; </span>


<a title="Contact Us" style="font-family:Arial; font-size:10pt" 
        href="http://localhost:53443/ContactUs.aspx">
<span style= "font-size:2; color: #0000FF">Contact Us</span></a><span style= "font-size:2; color: #0000FF">&nbsp;|&nbsp; </span>



<a title="Login" style="font-family:Arial;  font-size:10pt" 
        href="http://localhost:53443/AppUserLogin.aspx">
<span style= "font-size:2; color: #0000FF">Login</span></a><span style= "font-size:2; color: #0000FF"> </span>


    </p>
</div>

          

</asp:Content>










