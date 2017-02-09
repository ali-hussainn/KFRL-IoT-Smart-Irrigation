<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Current Status.aspx.cs" Inherits="SmartIrrigation.Current_Status" %>
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
            <strong style="color: #800000">Current Status</strong></div>
    <p class="style4">
        <asp:TextBox ID="txtfield_id" runat="server" Width="148px"></asp:TextBox>
        </p>
        <p class="style4">
            <asp:Button ID="btnv_f_d" runat="server" onclick="btnv_f_d_Click" 
                Text="View Current Field Data" Width="146px" />
        </p>
    <br />
   

    
    <p>
        <asp:GridView ID="C_sGridView1" runat="server" Width="459px">
        </asp:GridView>
        </p>
    <p>
        &nbsp;<br />
    </p>
</asp:Content>
