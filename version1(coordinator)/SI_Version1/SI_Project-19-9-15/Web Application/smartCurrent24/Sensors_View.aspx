<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.Master" CodeBehind="Sensors_View.aspx.cs" Inherits="SmartIrrigation.Sensors_View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style6
        {
            text-align: center;
            
            }
            
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      
        <p class="style6">
        <asp:Image ID="Image1" runat="server" Height="768px" ImageUrl="~/img/view1.jpg" 
                Width="742px" />
        </p>
    <p class="style6">

        <asp:Label ID="lbl_wlcm" runat="server" Height="75px" Width="530px"></asp:Label>
        </p>
        <p class="style6">
            <asp:ImageButton ID="btn_l_r" runat="server" Height="60px" 
                ImageUrl="~/img/live_r.jpg" onclick="btn_l_r_Click" Width="330px" />
        </p>
        <p class="style6">
            &nbsp;</p>
        <p class="style6">

        <asp:ImageButton ID="btn_ut" runat="server" Height="60px" 
                ImageUrl="~/img/ibtn_ut.jpg" Width="330px" OnClick="btn_ut_Click1" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="btn_s_ml1" runat="server" Width="330px" Height="60px" 
                ImageUrl="~/img/btn_s_m.jpg" OnClick="btn_s_ml1_Click1" />
        </p>
        <p class="style6">

            &nbsp;</p>
    <p class="style6">
          <asp:ImageButton ID="btn_h" runat="server" Width="330px" Height="60px" 
              ImageUrl="~/img/btn_h.jpg" OnClick="btn_h_Click1" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="btn_f_r" runat="server" Height="60px" 
              ImageUrl="~/img/ibtn_f_r.jpg" Width="330px" OnClick="btn_f_r_Click1" />
        </p>
        <p class="style6">
            &nbsp;</p>
        <p class="style6">
            <asp:Image ID="img_pic1" runat="server" ImageUrl="~/images/pic1.jpg" Height="180px" Width="180px"/>
        </p>
    <p class="style6">
        &nbsp;</p>
        <p class="style6">
            &nbsp;</p>
        <p class="style6">
            &nbsp;</p>
        <p class="style6">
            &nbsp;</p>
        <p class="style6">
            &nbsp;</p>
</asp:Content>

