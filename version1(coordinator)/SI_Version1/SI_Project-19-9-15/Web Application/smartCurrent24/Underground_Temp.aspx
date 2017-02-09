<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.Master" CodeBehind="Underground_Temp.aspx.cs" Inherits="SmartIrrigation.Underground_Temp" %>
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
        &nbsp;Underground Temperature</p>
    <p class="MsoNormal">
        <span>If you are looking for accurate and reliable temperature data in stream, lake, well, ocean, waste water, soil and air applications, the&nbsp;Air/Soil/Water Temperature Probe&nbsp;(H-377) is your sensor. This reliable data acquisition probe measures air, soil, or water in temperatures ranging from -40° C to 80° C. The probe&nbsp; is great for long-term field operation because it is calibration free, provides fast response and high accuracy.&nbsp; Its sealed, corrosion-resistant, and non-conductive enclosure ensures durability in rugged environments. The Air/Soil/Water Temperature Probe is also compatible with the H-350 XL and H-500 XL data loggers.<o:p></o:p></span></p>
    <p class="MsoNormal">
        &nbsp;</p>
    <p class="MsoNormal">
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" Height="153px" ImageUrl="~/images/u_t.jpg" Width="174px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p class="style6">
        <asp:GridView ID="grd_u_t" runat="server" Height="400px" Width="550px" 
            AutoGenerateColumns="False" CellSpacing="10" HorizontalAlign="Center">
            <Columns>
         <asp:BoundField DataField="Sensor_ID" HeaderText="Sensor ID" 
            SortExpression="Sensor_ID" ApplyFormatInEditMode="False" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="100"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="100" />
           </Columns>
            <Columns>
         <asp:BoundField DataField="Underground_Temperature" HeaderText="Underground Temperature" 
            SortExpression="Underground_Temperature" ApplyFormatInEditMode="False" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="100"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="100" />
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

