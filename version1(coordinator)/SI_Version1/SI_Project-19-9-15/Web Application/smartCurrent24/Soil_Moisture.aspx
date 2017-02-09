<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.Master" CodeBehind="Soil_Moisture.aspx.cs" Inherits="SmartIrrigation.Sensor_Data" %>
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
            font-family:'Times New Roman', Times, serif;
            font-size:small;
            color:black;
            height:12px;
            text-align:left;
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

    <p class="style6">
        &nbsp;<asp:Label ID="lbl_s_m" runat="server" Text="Soil Moisture" Height="15" Width="100"></asp:Label>
        </p>
    <p class="MsoNormal">
        This is a&nbsp;simple water sensor can&nbsp;be&nbsp;used&nbsp;to&nbsp;detect soil moisture&nbsp;when the&nbsp;soil moisture deficit module outputs&nbsp;a&nbsp;high level, and&nbsp;vice versa output low.&nbsp;Use&nbsp;this sensor produced&nbsp;an&nbsp;automatic plant waterer device,&nbsp;so&nbsp;that the&nbsp;plants&nbsp;in&nbsp;your garden without people to manage.</p>
    <p class="style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/images/SOil_Moisture.jpg" Width="200px" />
        </p>
    
    <ul style="padding: 0px 0px 0px 10px; margin: 0px 0px 0px 10px; list-style: disc outside none !important; color: rgb(76, 76, 76); font-family:'Times New Roman'; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
        <li style="padding: 0px 0px 0px 10px; margin: 0px 0px 0px 10px; list-style: disc outside none; width: 658px;">Mini. Working Voltage: DC 4.5V&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
        <li style="padding: 0px 0px 0px 10px; margin: 0px 0px 0px 10px; list-style: disc outside none !important;">Working Voltage: DC 5V~24V</li>
        <li style="padding: 0px 0px 0px 10px; margin: 0px 0px 0px 10px; list-style: disc outside none !important;">Module has digital output for more accurate</li>
        <li style="padding: 0px 0px 0px 10px; margin: 0px 0px 0px 10px; list-style: disc outside none !important;">Flow Rate Range: 1~30L/min</li>
        <li style="padding: 0px 0px 0px 10px; margin: 0px 0px 0px 10px; list-style: disc outside none !important;">Operating Temperature: ≤80℃</li>
        <li style="padding: 0px 0px 0px 10px; margin: 0px 0px 0px 10px; list-style: disc outside none !important;">Liquid Temperature: ≤120℃</li>
    </ul>
    <p class="style6">
        <asp:GridView ID="grd_s_m" runat="server" Height="450px" Width="550px" 
            AutoGenerateColumns="False" CellSpacing="10" HorizontalAlign="Center">
            <Columns>
         <asp:BoundField DataField="Sensor_ID" HeaderText="Sensor ID" 
            SortExpression="Sensor_ID" ApplyFormatInEditMode="False" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="100"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="100" />
           </Columns>
            <Columns>
         <asp:BoundField DataField="Soil_Moisture_Level1" HeaderText="Soil Moisture at Level 1" 
            SortExpression="Soil_Moisture_Level1" ApplyFormatInEditMode="False" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="100"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="100" />
           </Columns>
            <Columns>
                <asp:BoundField DataField="Soil_Moisture_Level2" HeaderText="Soil Moisture at Level 2" 
            SortExpression="Soil_Moisture_Level2" ApplyFormatInEditMode="False" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="100"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="100" />
           </Columns>
      <Columns>
          <asp:BoundField DataField="Time_Stamp" HeaderText="Date and Time" 
            SortExpression="Time_Stamp" ApplyFormatInEditMode="False" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="100"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="100" />
           </Columns>
              </asp:GridView>
    </p>
        <p>
       
            </p>
    <p class="style6">
    </p>
    <p class="style6">
    </p>
    <p class="style6">
    </p>
    <p class="style6">
    </p>
    <p class="style6">
    </p>
    <p class="style6">
    </p>
    <p class="style6">
    </p>
   
</asp:Content>

