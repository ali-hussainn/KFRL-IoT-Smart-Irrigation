<%@ Page Title="SmartIrrigation" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="darkthemes.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
        {
            font-size: medium;
            font-family: "Times New Roman", Times, serif;
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
    <span>
           <div class="style7">
                 <asp:Image ID="Image1" runat="server" Height="800px" 
                     ImageUrl="~/img/Pshop/Home.jpg" Width="742px" />
                 <strong>
                 <br />
                 </strong>
                 <p style="text-align:center">
                     <a title="Home" style="font-family:Arial; font-size:10pt" 
        href="http://localhost:53443/default.aspx"><span style= "font-size:2; color: #0000FF">Home</span></a><span style= "font-size:2 ;color:#0000FF">&nbsp;|&nbsp;</span>
                     <a title="About Us" style="font-family:Arial; font-size:10pt" 
        href="http://localhost:53443/about.aspx"><span style= "font-size:2;color: #0000FF">About Us</span></a><span style="font-size:2 ; color:#0000FF">&nbsp;|&nbsp;</span>
                     <a title="Terms Of Services" style="font-family:Arial; font-size:10pt" 
        href="http://localhost:53443/Termsofservices.aspx">
                     <span style= "font-size:2; color: #0000FF">Terms Of Services</span></a><span style= "font-size:2; color: #0000FF"">&nbsp;|&nbsp; 
                     </span>
                     <a title="Contact Us" style="font-family:Arial; font-size:10pt" 
        href="http://localhost:53443/ContactUs.aspx"><span style= "font-size:2; color: #0000FF">Contact Us</span></a><span style= "font-size:2; color: #0000FF">&nbsp;|&nbsp; 
                     </span>
                     <a title="Login" style="font-family:Arial;  font-size:10pt" 
        href="http://localhost:53443/AppUserLogin.aspx"><span style= "font-size:2; color: #0000FF">Login</span></a><span style= "font-size:2; color: #0000FF">
                     </span>
                 </p>
    </div>
</asp:Content>










