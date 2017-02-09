<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.Master"CodeBehind="Humidity.aspx.cs" Inherits="SmartIrrigation.Humidity" %>
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
        .style7
        {
            margin-left: auto;
            margin-right: auto; 
        }

        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <p class="style6">
        &nbsp;Humidity and External Temperature</p>
    <p class="MsoNormal">
        <span>The DHT11 is a basic, ultra low-cost digital temperature and humidity sensor. It uses a capacitive humidity sensor and a thermistor to measure the surrounding air, and spits out a digital signal on the data pin. Its fairly simple to use, but requires careful timing to grab data. The sensor gives new data once every 2 seconds so,sensor readings can be up to 2 seconds old.</span></p>
    <p class="style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/images/h.jpg" Width="200px" />
        </p>
    <p>
        Specifications:</p>
    <ul style="padding: 0px 0px 0px 10px; list-style: disc outside none; color: rgb(76, 76, 76); font-family:'Times New Roman'; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); margin-right: 0px; margin-top: 0px; margin-bottom: 0px;">
        <li style="padding: 0px 0px 0px 10px; margin: 0px 0px 0px 10px; list-style: disc outside none; width: 658px;">3 to 5V power and I/O</li>
        <li style="padding: 0px 0px 0px 10px; margin: 0px 0px 0px 10px; list-style: disc outside none; width: 658px;">2.5mA max current use during conversion (while requesting data)</li>
        <li style="padding: 0px 0px 0px 10px; margin: 0px 0px 0px 10px; list-style: disc outside none; width: 658px;">Good for 20-80% humidity readings with 5% accuracy</li>
        <li style="padding: 0px 0px 0px 10px; margin: 0px 0px 0px 10px; list-style: disc outside none; width: 658px;">Good for 0-50°C temperature readings ±2°C accuracy</li>
        <li style="padding: 0px 0px 0px 10px; margin: 0px 0px 0px 10px; list-style: disc outside none; width: 658px;">No more than 1 Hz sampling rate (once every second)</li>
        <li style="padding: 0px 0px 0px 10px; margin: 0px 0px 0px 10px; list-style: disc outside none; width: 658px;">Body size 15.5mm x 12mm x 5.5mm</li>
    </ul>
    <p class="style7">
        <asp:GridView ID="grd_h" runat="server" Height="450px" Width="550px" 
            AutoGenerateColumns="False" CellSpacing="10" HorizontalAlign="Center">
            <Columns>
         <asp:BoundField DataField="Sensor_ID" HeaderText="Sensor ID" 
            SortExpression="Sensor_ID" ApplyFormatInEditMode="False" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="100"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="100" />
           </Columns>
            <Columns>
         <asp:BoundField DataField="Humidity" HeaderText="Humidity" 
            SortExpression="Humidity" ApplyFormatInEditMode="False" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="100"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="100" />
           </Columns>
             <Columns>
         <asp:BoundField DataField="External_Temperature" HeaderText="External Temperature" 
            SortExpression="External_Temperature" ApplyFormatInEditMode="False" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="100"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="100" />
           </Columns>
      <Columns>
          <asp:BoundField DataField="Time_Stamp" HeaderText="Date and Time" 
            SortExpression="Time_Stamp" ApplyFormatInEditMode="False" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="100"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="100" />
           </Columns>
              </asp:GridView>
    </p>
        <p>
       
            </p>
    <p>
       
            </p>
    <p>
       
            </p>
    <p>
       
            </p>
    <p class="style6">
    </p>
    <p class="style6">
    </p>
    <p class="style6">
    </p>
   
</asp:Content>

