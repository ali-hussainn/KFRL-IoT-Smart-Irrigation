<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="SmartIrrigation.MaintenanceRecord.aspx.cs"  Inherits="SmartIrrigation.MaintenanceRecord" %>
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <div class="style1">
            <strong style="color: #800000">Maintenance Record
        </strong>
        </div>
    <p class="style4">
        <strong style="color: #800000">
        <asp:Button ID="Button1" runat="server" Text="View By UserID" Width="207px" />
        </strong>
        </p>
    <br />
   

    
    <p>
        &nbsp;</p>
    <p>
        &nbsp;<br />
    </p>
</asp:Content>

