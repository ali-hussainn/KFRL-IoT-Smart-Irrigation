<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.Master" CodeBehind="Real_Time_Data.aspx.cs" Inherits="SmartIrrigation.Real_Time_Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
<meta http-equiv="refresh" content="4;" />

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
            font-size: xx-large;
            font-family: "Times New Roman", Times, serif;
            color: #800000;
            height: 29px;
            text-align:end;
        }
        .style6
        {
            text-align: center;
            
            }
         .style2
        {
            text-align: left;
            
            }
       .myGridStyle body
        {
            font: 50px verdana;
        }
         
        .myGridStyle
        {
            border-collapse:collapse;
             
        }
         
        .myGridStyle tr th
        {
            padding: 8px;
            color: black;
            border: 1px solid black;
        }
         
         
        .myGridStyle tr:nth-child(even)
        {
            background-color: #E1FFEF;
        }
         
        .myGridStyle tr:nth-child(odd)
        {
            background-color: #00C157;
        }
         
        .myGridStyle td
        {
            border:1px solid black;
            padding: 8px;
        }
         
        .myGridStyle tr:last-child td
        {
        }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
        <p class="style1">
        
        
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" ImageUrl="~\img\1.jpg" Height="958px" Width="742px" />

        
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        
    </p>
    <p class="style4">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
      </p>
            <p class="style2">

            <asp:GridView ID="grd_rt_data" AllowPaging="true" GridLines="None" PagerStyle-CssClass="paging"  PageSize="10" CssClass="myGridStyle" runat="server" 
                Height="350px" HorizontalAlign="Center" AutoGenerateColumns="False" 
                    Width="350px">
           <Columns>
         <asp:BoundField DataField="Sensors" HeaderText=" Sensors " 
            SortExpression="Sensors" ApplyFormatInEditMode="False" HeaderStyle-Width="10" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="10" />
           </Columns>
           <Columns>
         <asp:BoundField DataField="Status" HeaderText=" Status " 
            SortExpression="Status" ApplyFormatInEditMode="False" HeaderStyle-Width="10" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="10" />
           </Columns>
                    
            </asp:GridView>
            <asp:GridView ID="grd_rt_data1" AllowPaging="true" GridLines="None" PagerStyle-CssClass="paging"  PageSize="10" CssClass="myGridStyle" runat="server" 
                Height="350px" HorizontalAlign="Center" AutoGenerateColumns="False" 
                    Width="350px">
           <Columns>
         <asp:BoundField DataField="Sensors" HeaderText=" Sensors " 
            SortExpression="Sensors" ApplyFormatInEditMode="False" HeaderStyle-Width="10" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="10" />
           </Columns>
           <Columns>
         <asp:BoundField DataField="Status" HeaderText=" Status " 
            SortExpression="Status" ApplyFormatInEditMode="False" HeaderStyle-Width="10" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="10" />
           </Columns>
                    
            </asp:GridView>
                </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</asp:Content>

