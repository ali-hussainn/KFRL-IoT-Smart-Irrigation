<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="View_FieldsData.aspx.cs" Inherits="SmartIrrigation.View_FieldsData" %>
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
            <strong style="color: #800000">View Fields Information</strong></div>
        <p class="style6">
            &nbsp;</p>
        <p class="style6">
                <asp:GridView ID="GridView2" runat="server" Height="148px" Width="753px">
            </asp:GridView>
                </p>
        <p class="style6">
            &nbsp;</p><p class="style6">
                    &nbsp;</p>
         <br />
   

    
    <p>
        &nbsp;</p>
    <p>
        &nbsp;<br />
    </p>
</asp:Content>

