<%@ Page Language="C#" AutoEventWireup="true" MasterPAgeFile="~/Home.Master"CodeBehind="Flow_Sensor.aspx.cs" Inherits="SmartIrrigation.Flow_Sensor" %>
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
        &nbsp;Water Flow Sensor</p>
    <p class="MsoNormal">
        <span>Water flow sensor consists of a plastic valve body, a water rotor, and a hall-effect sensor. When water flows through the rotor, rotor rolls. Its speed changes with different rate of flow. The hall-effect sensor outputs the corresponding pulse signal. This one is suitable to detect flow in water running valves.<o:p></o:p></span></p>
    <p class="style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/images/f_s.jpg" Width="200px" />
        </p>
    <p>
        Specifications:</p>
    <ul style="padding: 0px 0px 0px 10px; list-style: disc outside none; color: rgb(76, 76, 76); font-family:'Times New Roman'; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); margin-right: 0px; margin-top: 0px; margin-bottom: 0px;">
        <li style="padding: 0px 0px 0px 10px; margin: 0px 0px 0px 10px; list-style: disc outside none; width: 658px;">Module has digital output for more accurate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
        <li style="padding: 0px 0px 0px 10px; margin: 0px 0px 0px 10px; list-style: disc outside none !important;">Minimum Working Voltage: DC 4.5V</li>
        <li style="padding: 0px 0px 0px 10px; margin: 0px 0px 0px 10px; list-style: disc outside none !important;">Flow Rate Range: 1~30L/min</li>
        <li style="padding: 0px 0px 0px 10px; margin: 0px 0px 0px 10px; list-style: disc outside none !important;">Operating Temperature: ≤80℃</li>
        <li style="padding: 0px 0px 0px 10px; margin: 0px 0px 0px 10px; list-style: disc outside none !important;">Liquid Temperature: ≤120℃</li>
    </ul>
    <p class="style6">
        <asp:GridView ID="grd_f_s" runat="server" Height="450px" Width="550px" 
            AutoGenerateColumns="False" CellSpacing="10" HorizontalAlign="Center">
            <Columns>
         <asp:BoundField DataField="Sensor_ID" HeaderText="Sensor ID" 
            SortExpression="Sensor_ID" ApplyFormatInEditMode="False" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="100"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="100" />
           </Columns>
            <Columns>
         <asp:BoundField DataField="Flow_Data" HeaderText="Water Flow Rate" 
            SortExpression="Flow_Data" ApplyFormatInEditMode="False" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="100"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="100" />
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
   
</asp:Content>

