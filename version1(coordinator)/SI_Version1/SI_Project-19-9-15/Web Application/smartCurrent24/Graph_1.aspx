<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.Master" CodeBehind="Graph_1.aspx.cs" Inherits="SmartIrrigation.Graph" %>

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
            <strong style="color: #800000">&nbsp;<br />
            </strong></div>
    <p class="style6">
        <asp:Label ID="Label1" runat="server" Text="Soil Moisture Level 1 vs Date"></asp:Label>
        </p>
        <p class="style6">
       <asp:Chart ID="soil_m_1" runat="server" Height="400px" Width="600px">
            <Series>
                <asp:Series ChartType="Line" Name="Series1">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        </p>
        <p class="style6">
            &nbsp;</p>
    <p class="style6">
        </p>
    <p class="style6">
       </p>
        <p class="style6">
            &nbsp;
        </p>
    <p class="style6">
       </p>
        <p class="style6">
       </p>
        <p class="style6">
       </p>
        <p class="style6">
            <asp:Label ID="Label2" runat="server" Text="Soil Moisture Level 2 vs"></asp:Label>
            &nbsp;Date</p>
        
        
    <p class="style6">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Chart ID="soil_m_2" runat="server" Height="400px" Width="600px">
            <Series>
                <asp:Series Name="Series1" ChartType="Line">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
        &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <br />
    </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
</asp:Content>

