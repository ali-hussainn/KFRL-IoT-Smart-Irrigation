<%@ Page Title="SmartIrrigation" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="AppUserLogin.aspx.cs" Inherits="SmartIrrigation.AppUserLogin " %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 136px;
        }
        .style2
        {
            width: 110px;
        }
        .style3
        {
            width: 110px;
            height: 39px;
        }
        .style4
        {
            height: 39px;
            width: 241px;
        }
        .style5
        {
            width: 241px;
        }
        .style6
        {
            width: 110px;
            height: 31px;
        }
        .style7
        {
            height: 31px;
            width: 241px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <br />
        <asp:Label ID="lblLogin" runat="server" CssClass="xLargeLabel" 
            Text="User Login"></asp:Label>
    </p>
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red" BackColor="White" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td class="style5" rowspan="4">
                <asp:Image ID="Image1" runat="server" Height="284px" 
                    ImageUrl="~/images/new_login.jpg" Width="382px" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblEmailID" runat="server" CssClass="LargeLabel" Text="Email:"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtEmailID" runat="server" CssClass="MediumTextBox" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblPwd" runat="server" CssClass="LargeLabel" Text="Password:"></asp:Label>
                <br />
            </td>
            <td class="style4">
                <asp:TextBox ID="txtPwd" runat="server" CssClass="MediumTextBox"  
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style7">
                <asp:Button ID="btnLogin" runat="server" CssClass="MediumButton" Text="Login" 
                    Width="97px" onclick="btnSubmit_Click" />
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
         <p>
        <asp:Label ID="Label1" runat="server" CssClass="LargeLabel" Text="New User?"></asp:Label>
    &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" 
            CssClass="MediumHyperLink" NavigateUrl="~/AppUserRegistration.aspx">Sign Up</asp:HyperLink>
    </p>
   
    <p>
    </p>
</asp:Content>
