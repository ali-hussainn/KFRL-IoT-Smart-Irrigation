<%@ Page Title="SmartIrrigation" Language="C#" MasterPageFile="~/MainHome.Master" AutoEventWireup="true" CodeBehind="MainHome.aspx.cs" Inherits="SmartIrrigation.MainHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" CssClass="xLargeLabel" Text="Welcome"></asp:Label>
    &nbsp;
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" CssClass="LargeLabel" Text="Please select a vehicle:"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="gvVehicleView" runat="server" CssClass = "GridView"
            AutoGenerateColumns = "False" ondatabound="gvVehicleView_DataBound" 
            onrowdatabound="gvVehicleView_RowDataBound" 
            Height="147px" Width="500px" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" >
            <Columns>
                <asp:TemplateField > 
                <HeaderTemplate >
                 Registration Number
                </HeaderTemplate> 
                <ItemTemplate>
            <%--  //  <asp:LinkButton runat= "server" ID = "LnkVhlID" Text= <%# DataBinder.Eval (Container.DataItem, "Reg_NO") %> >--%>
              <%--  </asp:LinkButton> --%>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Model" HeaderText="Model" />
                <asp:BoundField DataField="Make" HeaderText="Make"  />
                <asp:BoundField DataField="Purchase_Date" HeaderText="Purchase Date"  />
            </Columns>
             
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
             
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    </asp:Content>
