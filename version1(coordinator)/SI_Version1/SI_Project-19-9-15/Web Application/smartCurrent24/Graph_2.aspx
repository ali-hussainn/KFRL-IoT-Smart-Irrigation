<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.Master" CodeBehind="Graph_2.aspx.cs" Inherits="SmartIrrigation.Graph_2" %>
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
            <strong style="color: #800000">&nbsp;</strong></div>
    <p class="style6">
        Water Flow Rate vs Date</p>
    <p class="style6">
       <asp:Chart ID="flow_d" runat="server" Height="400px" Width="600px">
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
        </p>
        <p class="style6">
            &nbsp;
        </p>
    <p class="style6">
        </p>
        <p >
  
            </p>
    <p class="style6">

    </p>
        <p class="style6">

    </p>
        <p class="style6">
            &nbsp;</p>
        <p class="style6">
            <asp:Label ID="Label1" runat="server" Text="Humidity vs Date"></asp:Label>
        </p>
        <p class="style6">
            <asp:Chart ID="humidity" runat="server" Height="400px" Width="600px">
                <Series>
                    <asp:Series Name="Series1" ChartType="Line">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </p>
        <p class="style6">
        </p>
        <p class="style6">
        </p>
        <p class="style6">
        </p>
        <p class="style6">
        </p>
    <p>
  
    </p>
        <p class="style6">
  
            &nbsp;</p>
</asp:Content>
