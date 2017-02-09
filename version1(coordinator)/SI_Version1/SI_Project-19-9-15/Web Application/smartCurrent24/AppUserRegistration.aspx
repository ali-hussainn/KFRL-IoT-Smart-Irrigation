<%@ Page Title="SmartIttigation" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="AppUserRegistration.aspx.cs" Inherits="SmartIrrigation.AppUser_Registration" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 126%;
        }
        .style2
        {
            width: 151px;
        }
        .style3
        {
            width: 151px;
            height: 39px;
        }
        .style4
        {
            height: 39px;
        }
        .style5
        {
            height: 39px;
            width: 234px;
        }
        .style6
        {
            width: 234px;
        }
        .style7
        {
            width: 151px;
            height: 20px;
        }
        .style8
        {
            width: 234px;
            height: 20px;
        }
        .style9
        {
            height: 20px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <p>
        <br />
        <asp:Label ID="lblUserRegistration" runat="server" CssClass="xLargeLabel" 
            Text="User Registration"></asp:Label>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblMessage" runat="server" BackColor="White" 
            ForeColor="Red"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;</p>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Label ID="lblEmailID" runat="server" CssClass="LargeLabel" Text="Email:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtEmailID" runat="server" CssClass="MediumTextBox"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="MediumRequiredFieldValidator"
                    ControlToValidate="txtEmailID" 
                    
                    ErrorMessage="Enter your Email ID "></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="RegularExpressionValidator"
                    ControlToValidate="txtEmailID" 
                    ErrorMessage="&lt;br/&gt;Incorrect Format(abc@yahoo.com)" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblPassword" runat="server" CssClass="LargeLabel" Text="Password:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="MediumTextBox" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="MediumRequiredFieldValidator" 
                    ControlToValidate="txtPassword" 
                    
                    ErrorMessage="Enter the password."></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblConfirmPwd" runat="server" CssClass="LargeLabel" 
                    Text="Confirm Password:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtConfirmPwd" runat="server" CssClass="MediumTextBox" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtPassword" ControlToValidate="txtConfirmPwd" 
                    ErrorMessage="Password doesnot match" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblName" runat="server" CssClass="LargeLabel" Text="First Name:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtName" runat="server" CssClass="MediumTextBox"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="MediumRequiredFieldValidator" 
                    ControlToValidate="txtName" 
                    
                    ErrorMessage="Enter your name"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtName" CssClass="MediumRegularExpressionValidator" 
                    ErrorMessage="Invalid Input" ValidationExpression="^[a-zA-Z]{1,25}$"></asp:RegularExpressionValidator>
                <br />
                </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblLastName" runat="server" CssClass="LargeLabel" 
                    Text="Last Name:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtLastName" runat="server" CssClass="MediumTextBox"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtLastName" CssClass="MediumRequiredFieldValidator" 
                    ErrorMessage="Enter your name"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtLastName" CssClass="MediumRegularExpressionValidator" 
                    ErrorMessage="Invalid Input" ValidationExpression="^[a-zA-Z]{1,25}$"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
        
            <td class="style3">
                <asp:Label ID="lblDateOfBirth" runat="server" CssClass="LargeLabel" 
                    Text="Date Of Birth:"></asp:Label>
                    
            </td>
        
            <td class="style5">
                <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="MediumTextBox"></asp:TextBox>
                <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtDateOfBirth">
                </cc1:CalendarExtender>
               
            </td>
            
        </tr>
        <tr>


            <td class="style3">
                <asp:Label ID="lblZipCode" runat="server" CssClass="LargeLabel" Text="Zip Code:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtZipCode" runat="server" CssClass="MediumTextBox"></asp:TextBox>
            </td>
            <td class="style4">
                <br />
                <br />
            </td>
        </tr>
         <tr>
      <td class="style3">
                <asp:Label ID="lblAddress" runat="server" CssClass="LargeLabel" Text="Address:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtAddress" runat="server" CssClass="MediumTextBox"></asp:TextBox>
            </td>
            <td class="style4">
                <br />
                <br />
            </td>
             </tr>
     
        <tr>
            <td class="style2">
                <br />
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                </td>
            <td class="style8">
                <asp:Button ID="btnSubmit" runat="server" CssClass="MediumButton" Text="Submit" 
                    onclick="BtnSubmit_Click" BorderColor="#A7A7A7" BorderStyle="Outset" />
            </td>
            <td class="style9">
                <asp:Button ID="btnCancel" runat="server" CssClass="MediumButton" Text="Cancel" 
                    onclick="BtnCancel_Click" CausesValidation="False" BorderColor="#A7A7A7" 
                    BorderStyle="Outset" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
</asp:Content>
