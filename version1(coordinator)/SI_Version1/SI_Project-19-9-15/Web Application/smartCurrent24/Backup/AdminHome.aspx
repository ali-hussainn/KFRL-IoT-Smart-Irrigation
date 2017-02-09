<%@ Page Title="SmartIrrigation" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="SmartIrrigation.AdminHome " %>

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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <div class="style1">
            <strong style="color: #800000">Welcome Admin&nbsp;
            <br />
            <br />
            <br />
            <br />
        </strong>
        </div>
    <p class="style6">
        &nbsp;
        <asp:Button ID="btnnot" runat="server" Text="NOTIFICATIONS" 
            Width="260px" BorderStyle="Solid" Height="45px" onclick="btnnot_Click" />
        <asp:Image ID="Image1" runat="server" Height="34px" Width="46px" 
            ImageUrl="~/images/notifications.png" />
        </p>
        <p class="style6">
        &nbsp;
        <asp:Button ID="btnCurrent" runat="server"  Text="CURRENT STATUS" 
            Width="260px" BorderStyle="Solid" Height="45px" onclick="btnCurrent_Click"/>
            <asp:Image ID="Image2" runat="server" Height="34px" Width="46px" 
                ImageUrl="~/images/current_status.jpg" />
        </p>
        <p class="style6">
        &nbsp;
        <asp:Button ID="btnw_c" runat="server"  Text="WEATHER CONDITIONS" 
            Width="260px" BorderStyle="Solid" Height="45px" onclick="btnw_c_Click" />
            <asp:Image ID="Image3" runat="server" Height="34px" Width="46px" 
                ImageUrl="~/images/weatherlogo.jpg" />
        </p>
        <p class="style6">
        <asp:Button ID="btnc_d" runat="server" Text="COMMUNICATION DETAILS" 
            Width="260px" BorderStyle="Solid" Height="45px" />
            <asp:Image ID="Image4" runat="server" Height="34px" Width="37px" 
                ImageUrl="~/images/images (3).jpg" />
        </p>
        <p class="style6">
        &nbsp;&nbsp;
        <asp:Button ID="btnm_r" runat="server" Text="MAINTENANCE RECORD" 
            Width="260px" BorderStyle="Solid" Height="45px" onclick="btnm_r_Click" />
            <asp:Image ID="Image5" runat="server" Height="34px" Width="46px" 
                ImageUrl="~/images/images.jpg" />
        </p>
        <p class="style6">
        &nbsp;&nbsp;
        <asp:Button ID="btnm_l" runat="server" Text="MAP LOCATIONS" 
            Width="260px" BorderStyle="Solid" Height="45px" onclick="btnm_l_Click1" />
            <asp:Image ID="Image6" runat="server" Height="34px" Width="46px" 
                ImageUrl="~/images/map2.jpg" />
        </p>
        <p class="style6">
        &nbsp;<asp:Button ID="btnfield_info" runat="server" Text="FIELDS INFORMATION" 
            Width="260px" BorderStyle="Solid" Height="45px" onclick="btnfield_info_Click" />
            <asp:Image ID="Image7" runat="server" Height="47px" 
                ImageUrl="~/images/fieldinfo.jpg" Width="42px" />
        </p>
        <p class="style6">
        &nbsp;<asp:Button ID="btna_u" runat="server" Height="45px" 
                onclick="btna_u_Click" Text="AUTHENTICATE USER" Width="260px" 
                BorderStyle="Solid" />
          <asp:Image ID="Image8" runat="server" Height="47px" 
                ImageUrl="~/images/auth_user.jpg" Width="42px" />
        </p>
</asp:Content>
