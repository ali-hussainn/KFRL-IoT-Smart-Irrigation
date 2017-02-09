<%@ Page Title="SmartIrrigation" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="SmartIrrigation.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 183px;
        }
        .style4
        {
            width: 101px;
            height: 37px;
        }
        .style5
        {
            width: 291px;
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <asp:Label ID="lblContactUs" runat="server" CssClass="xLargeLabel" Text="Contact Us"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" 
        Text=" Please fill the form below to contact us and we will try to get back to you as soon as possible."></asp:Label>
    <br />
&nbsp;<table class="style1">
        <tr>
            <td class="style4">
                <asp:Label ID="lblName" runat="server" Text="Your Name"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtName" runat="server" CssClass="MediumTextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="lblPhoneNumber" runat="server" Text="Your Phone " ></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtPhone" runat="server" CssClass="MediumTextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="lblEmail" runat="server" Text="Your Email "></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="MediumTextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="lblMsgSubject" runat="server" Text="Message Subject" ></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtMsgSubmit" runat="server" CssClass="MediumTextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="lblMessage" runat="server" Text="Message" ></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" CssClass="MediumTextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" CssClass="MediumButton" Text="Submit" />
                <br />
&nbsp; &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
