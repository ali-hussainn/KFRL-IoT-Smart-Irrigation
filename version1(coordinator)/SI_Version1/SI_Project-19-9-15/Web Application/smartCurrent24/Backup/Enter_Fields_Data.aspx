<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Enter_Fields_Data.aspx.cs" Inherits="SmartIrrigation.Enter_Fields_Data" %>



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
            <strong style="color: #800000">Enter Fields Data
        </strong>
        </div>
    <p class="style6">
        <asp:Label ID="Label1" runat="server" Text="User ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtu_ID" runat="server" Width="248px"></asp:TextBox>
        </p>
    <p class="style6">
        <asp:Label ID="Label2" runat="server" Text="Field ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtf_ID" runat="server"  
            Width="248px"></asp:TextBox>
        </p>
    <p class="style6">
        <asp:Label ID="Label3" runat="server" Text="Field Location:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtf_l" runat="server"  
            Width="248px"></asp:TextBox>
        </p>
    <p class="style6">
        <asp:Label ID="Label4" runat="server" Text="Number of Nodes:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtn_n" runat="server"  
            Width="248px"></asp:TextBox>
        </p>
        <p class="style6">
        <asp:Label ID="Label5" runat="server" Text="Communication Type:"></asp:Label>
            &nbsp;
        <asp:TextBox ID="txtc_t" runat="server" 
            Width="248px"></asp:TextBox>
        </p>
    <p class="style6">
        <asp:Label ID="Label6" runat="server" Text="Installation Details:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txti_d" runat="server" 
            Width="248px"></asp:TextBox>
        &nbsp;</p>
        <p >
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Date of Installation:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<asp:TextBox ID="txtd_i" runat="server" Width="248px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label12" runat="server" Text="dd/mm/yy" ClientIDMode="Static" 
                CssClass="MediumRequiredFieldValidator"></asp:Label>
        </p>
    <p class="style6">
        <asp:Label ID="Label9" runat="server" Text="Team Members:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
            ID="txtt_m" runat="server" 
            Width="248px"></asp:TextBox>
        </p>
    <p class="style6">
        <asp:Label ID="Label10" runat="server" Text="Farmer's Name:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtf_n" runat="server" 
            Width="248px"></asp:TextBox>
        </p>
    <p class="style6">
        <asp:Label ID="Label11" runat="server" Text="Farmer's CNIC:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtf_c" runat="server" 
            Width="248px"></asp:TextBox>
        </p>
        <p class="style6">
            <asp:Button ID="btn_enter_d" runat="server" Height="45px" 
                onclick="btn_enter_d_Click" Text="Enter to Database" Width="206px" />
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
    <br />
   

    
    <p>
        &nbsp;</p>
    <p>
        &nbsp;<br />
    </p>
</asp:Content>

