<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="FieldsInformation.aspx.cs" Inherits="SmartIrrigation.FieldsInformation" %>
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
            <strong style="color: #800000">Fields
            Information</strong></div>
    <p class="style6">
        <asp:Button ID="btn_view_data" runat="server" Height="45px" 
            Text="VIEW FIELDS DATA" Width="260px" BorderStyle="Solid" 
            onclick="btn_view_data_Click" />
        </p>
    <br />
   

    
    <p class="style6">
        <asp:Button ID="btn_enter_data" runat="server" Height="45px" 
            Text="ENTER FIELDS DATA" Width="260px" BorderStyle="Solid" 
            onclick="btn_enter_data_Click" />
        <br />
        </p>
    
     <br />
</asp:Content>
