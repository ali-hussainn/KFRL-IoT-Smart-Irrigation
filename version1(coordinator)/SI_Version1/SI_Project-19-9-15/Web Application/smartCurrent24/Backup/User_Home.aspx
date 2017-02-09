<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.Master" CodeBehind="User_Home.aspx.cs" Inherits="SmartIrrigation.User_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            font-family: "Times New Roman", Times, serif;
            color: #800000;
            height: 29px;
        }
        .style2
        {
            text-align: justify;
        }
        .style3
        {
            text-align:center;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <div class="style1">
            <strong style="color: #800000">&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            FIELD DATA</strong><asp:Label ID="lbluser_name" runat="server" 
                CssClass="xLargeLabel" Visible="False"></asp:Label>
        </div>
    <p class="style2">
        <asp:GridView ID="grd_User_home" runat="server" Height="250px" Width="500px" 
            AutoGenerateColumns="False" CellSpacing="10" HorizontalAlign="Center">
            <Columns>
         <asp:BoundField DataField="Soil_Moisture_Level1" HeaderText="Soil Moisture1" 
            SortExpression="Soil_Moisture_Level1" ApplyFormatInEditMode="False" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="100"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="100" />
           </Columns>
           <Columns>
         <asp:BoundField DataField="Soil_Moisture_Level2" HeaderText="  Soil Moisture2  " 
            SortExpression="Soil_Moisture_Level2" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="100" />
           </Columns>
           <Columns>
         <asp:BoundField DataField="Flow_Data" HeaderText=" Flow Data  " 
            SortExpression="Flow_Data" ItemStyle-Width="100" ItemStyle-HorizontalAlign="Center" />
           </Columns>
           <Columns>
           <asp:BoundField DataField="Humidity" HeaderText="    Humidity    " 
            SortExpression="Humidity" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="100" />
           </Columns>
           <Columns>
           <asp:BoundField DataField="External_Temperature" HeaderText="    External Temperature    " 
            SortExpression="External_Temperature" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="100" />
           </Columns>
           <Columns>
           <asp:BoundField DataField="Underground_Temperature" HeaderText="    Underground Temperature " 
            SortExpression="Underground_Temperature" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="100" />
           </Columns>
           <Columns>
           <asp:BoundField DataField="Time_Stamp" HeaderText="  Time Stamp  " 
            SortExpression="Time_Stamp" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="100" />
           </Columns>

         </asp:GridView>

   

   </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p class="style3">
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_g_r" runat="server" Text="Generate Report" 
                onclick="btn_g_r_Click" Width="211px" />
            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
        </p>
    <p class="style3" >
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="btn_valve" runat="server" onclick="btn_valve_Click" 
            Text="Valve Status" Width="211px" Visible="False" />
        <asp:Label ID="lbl_valve" runat="server" Visible="False"></asp:Label>

    </p>
        <p class="style3" >
            <asp:GridView ID="grd_valve_status" runat="server" Visible="False">
            </asp:GridView>

    </p>
</asp:Content>
