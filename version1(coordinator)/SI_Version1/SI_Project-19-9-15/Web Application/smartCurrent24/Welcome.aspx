<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.Master" CodeBehind="Welcome.aspx.cs" Inherits="SmartIrrigation.Welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            font-family: "Times New Roman", Times, serif;
            color: #800000;
            height: 29px;
        }
        .style6
        {
            text-align: center;
            
            }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="clear: both;">
</div>
<div id="header3">
    <div class="wrap">
        <div id="slide-holder">
            <div id="slide-runner">
                <a href=""><img id="slide-img-1" src="img/Welcome/DSCN9912.JPG" class="slide" alt="" /></a>
                <a href=""><img id="slide-img-2" src="img/Welcome/DSCN9913.jpg" class="slide" alt="" /></a>
                <a href=""><img id="slide-img-3" src="img/Welcome/DSCN9914.jpg" class="slide" alt="" /></a>
                <a href=""><img id="slide-img-4" src="img/Welcome/DSCN9919.jpg" class="slide" alt="" /></a>
                <a href=""><img id="slide-img-5" src="img/Welcome/DSCN9917.jpg" class="slide" alt="" /></a>
                <a href=""><img id="slide-img-6" src="img/Welcome/DSCN9918.jpg" class="slide" alt="" /></a>
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

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <div class="style1">
            <strong style="color: #800000">&nbsp;</strong></div>
    <p class="style6">
       </p>
    <p class="style6">
       </p>
    <p class="style6">
        </p>
        <p class="style6">
            &nbsp;
        </p>
    <p class="style6">
       </p>
        <p >
        </p>
        <p class="style6">
            &nbsp;<p class="style6">
            <asp:ImageButton ID="img_welcome" runat="server" Height="90px" 
                ImageUrl="~/img/Welcome/gotocis.jpg" onclick="img_welcome_Click" 
                Width="342px" />
</asp:Content>


