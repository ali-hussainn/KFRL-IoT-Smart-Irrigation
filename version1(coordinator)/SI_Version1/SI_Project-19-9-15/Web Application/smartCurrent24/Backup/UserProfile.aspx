<%@ Page Title="SmartIrrigation" Language="C#" MasterPageFile="~/MainHome.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="SmartIrrigation.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 183px;
            height: 39px;
        }
        .style4
        {
            height: 39px;
        }
        .style5
        {
            width: 183px;
            height: 38px;
        }
        .style6
        {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" CssClass="xLargeLabel" Text="UserProfile"></asp:Label>
        <br />
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMessage" runat="server" CssClass="MediumLabel"></asp:Label>
    </p>
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="LargeLabel"></asp:Label>
            </td>
            <td class="style4">
                <asp:Label ID="lblEmailID" CssClass="MediumLabel" runat="server"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="lblFname" runat="server" Text="First Name" CssClass="LargeLabel"></asp:Label>
            </td>
            <td class="style6">
                <asp:Label ID="lblFirstName" CssClass="MediumLabel" runat="server"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblLname" runat="server" Text="Last Name" CssClass="LargeLabel"></asp:Label>
            </td>
            <td class="style4">
                <asp:Label ID="lblLastName" runat="server" CssClass="MediumLabel"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblDate" runat="server" Text="Date Of Birth" 
                    CssClass="LargeLabel"></asp:Label>
            </td>
            <td class="style4">
                <asp:Label ID="lblDOB" runat="server" CssClass="MediumLabel"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblCountryName" runat="server" Text="Country Name" 
                    CssClass="LargeLabel"></asp:Label>
            </td>
            <td class="style4">
                <asp:Label ID="lblCountry" runat="server" CssClass="MediumLabel"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblCityName" runat="server" Text="City Name" 
                    CssClass="LargeLabel"></asp:Label>
            </td>
            <td class="style4">
                <asp:Label ID="lblCity" runat="server" CssClass="MediumLabel"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblZip" runat="server" Text="Zip Code" CssClass="LargeLabel"></asp:Label>
            </td>
            <td class="style4">
                <asp:Label ID="lblZipCode" runat="server" CssClass="MediumLabel"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblCurrency" runat="server" Text="Currency" 
                    CssClass="LargeLabel"></asp:Label>
            </td>
            <td class="style4">
                <asp:Label ID="lblCurrencyName" runat="server" CssClass="MediumLabel"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" CssClass="LargeLabel" Text="Mobile Number"></asp:Label>
                </td>
            <td class="style4">
                <asp:Label ID="lblMobileNo" runat="server" CssClass="MediumLabel" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td class="style4">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnEdit" runat="server" CssClass="MediumButton" 
                    Text="Edit Profile" onclick="btnEdit_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
