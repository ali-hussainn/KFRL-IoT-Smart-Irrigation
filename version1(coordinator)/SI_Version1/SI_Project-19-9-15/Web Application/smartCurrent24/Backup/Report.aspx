<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.Master" CodeBehind="Report.aspx.cs" Inherits="SmartIrrigation.Report" %>

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
            text-align:left;
            }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <div class="style1">
            <strong style="color: #800000">&nbsp;<br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            REPORT</strong><asp:Label ID="lbl_n_i" runat="server" CssClass="xLargeLabel" 
                Visible="False"></asp:Label>
         </div>
     <p class="style2">
         &nbsp;&nbsp; &nbsp;</p>
        <p class="style2">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="lbl_d" runat="server" Text="Date : "></asp:Label>
         <asp:Label ID="lbl_date" runat="server"></asp:Label>
     <asp:GridView ID="grd_user_detail" runat="server" Height="120px" 
            Width="200px"
             AutoGenerateColumns="False" 
             onselectedindexchanged="grd_user_detail_SelectedIndexChanged" 
             GridLines="None" HorizontalAlign="Center" CellSpacing="10" Visible="False">
            <Columns>
         <asp:BoundField DataField="FirstName" HeaderText=" First Name " 
            SortExpression="FirstName" ApplyFormatInEditMode="False" HeaderStyle-Width="10" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="10" />
           </Columns>
           <Columns>
         <asp:BoundField DataField="LastName" HeaderText="  Last Name  " 
            SortExpression="LastName" ApplyFormatInEditMode="False" HeaderStyle-Width="10" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="10"/>
           </Columns>
           <Columns>
         <asp:BoundField DataField="EmailID" HeaderText=" Contact Email Address  " 
            SortExpression="EmailID" ApplyFormatInEditMode="False" HeaderStyle-Width="10" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="10" />
           </Columns>
            </asp:GridView>
            &nbsp;</p>
        <p class="style1" 
    style="color: #800000">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="grd_report" runat="server" GridLines="None" 
                Height="250px" HorizontalAlign="Center" AutoGenerateColumns="False" 
                onselectedindexchanged="grd_report_SelectedIndexChanged" Width="450px">
           <Columns>
         <asp:BoundField DataField="Sensors" HeaderText=" Sensors " 
            SortExpression="Sensors" ApplyFormatInEditMode="False" HeaderStyle-Width="10" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="10" />
           </Columns>
           <Columns>
         <asp:BoundField DataField="Average_day" HeaderText=" Average/day " 
            SortExpression="Average_day" ApplyFormatInEditMode="False" HeaderStyle-Width="10" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Height="10" />
           </Columns>
           <Columns>
         <asp:BoundField DataField="Average_week" HeaderText=" Average/week  " 
            SortExpression="Average_week" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10" />
           </Columns>
           <Columns>
         <asp:BoundField DataField="Average_month" HeaderText=" Average/month  " 
            SortExpression="Average_month" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10" />
           </Columns>
            
            </asp:GridView>
        </p>
        <p class="style1" 
    style="color: #800000">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p class="style1" 
    style="color: #800000">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <p class="style1">
        
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
        </p>
        <p class="style1">
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
        <asp:Button ID="btn_graph" runat="server" Text="View Graph" 
            onclick="btn_graph_Click" Height="20px" Width="230px" Visible="False" />
              
        </p>
</asp:Content>

