<%@ Page Title="" Language="C#" MasterPageFile="~/gentelella-master.master" AutoEventWireup="true" CodeFile="InsertUpdate.aspx.cs" Inherits="InsertUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" 
    CssClass="table table-hover table-condensed table-striped" 
    DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
            InsertVisible="False" ReadOnly="True" SortExpression="ProductID" 
            Visible="False" />
        <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
            SortExpression="ProductName" />
        <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" 
            SortExpression="SupplierID" Visible="False" />
        <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" 
            SortExpression="CategoryID" Visible="False" />
        <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" 
            SortExpression="QuantityPerUnit" />
        <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
            SortExpression="UnitPrice" />
        <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" 
            SortExpression="UnitsInStock" />
        <asp:BoundField DataField="UnitsOnOrder" HeaderText="UnitsOnOrder" 
            SortExpression="UnitsOnOrder" />
        <asp:BoundField DataField="ReorderLevel" HeaderText="ReorderLevel" 
            SortExpression="ReorderLevel" />
        <asp:CheckBoxField DataField="Discontinued" HeaderText="Discontinued" 
            SortExpression="Discontinued" />
        <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" 
            SortExpression="CategoryName" />
        <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
            SortExpression="CompanyName" />
    </Columns>
    <PagerStyle CssClass="pagination-ys" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:northwinddbConnectionString %>" 
    SelectCommand="SELECT * FROM [PRODUCTVIEW]"></asp:SqlDataSource>

</asp:Content>

