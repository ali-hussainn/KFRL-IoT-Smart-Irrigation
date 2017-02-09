<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true"CodeBehind="UserAuth.aspx.cs" Inherits="SmartIrrigation.UserAuth" %>
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
            <strong style="color: #800000">User Authentication
        </strong>
        </div>
    <p class="style4">
        <asp:Button ID="Button1" runat="server" Text="Authenticate User" 
            onclick="Button1_Click1" />
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
   

    
    <p>
        &nbsp;</p>
    <p>
        &nbsp;<br />
    </p>
</asp:Content>
