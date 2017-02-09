<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Fields_Information.aspx.cs" Inherits="SmartIrrigation.Fields_Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            font-family: "Times New Roman", Times, serif;
            color: #800000;
            height: 29px;
        }
        .style4
        {
            text-align: justify;
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
            <strong style="color: #800000">Fields Information</strong></div>
    <p class="style6">
        <asp:Button ID="Button1" runat="server" Text="VIEW FIELDS INFORMATION" 
           Width="260px" BorderStyle="Solid" Height="45px" onclick="btnnot_Click" />
        </p>
    <br />
   

    
    <p class="style6">
        <asp:Button ID="Button2" runat="server" Text="ENTER FIELDS INFORMATION" 
           Width="260px" BorderStyle="Solid" Height="45px" onclick="btnnot_Click" />
       </p>
    <p>
        &nbsp;<br />
    </p>
</asp:Content>

