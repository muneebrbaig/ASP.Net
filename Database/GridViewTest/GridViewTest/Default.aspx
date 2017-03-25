<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GridViewTest._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div class="panel panel-primary">
    <div class="panel-heading">
       <div class="input-group">
        <span class="input-group-addon">Product</span>
         <asp:TextBox ID="txtSearchProduct" runat="server" autofocus="true"
           CssClass="form-control" placeholder="Search product"></asp:TextBox>
        
      </div>
    </div>
    <div class="panel-body">
     
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" 
    DataSourceID="SqlDataSource1" CssClass="table table-hover table-condensed table-striped"
    EnableTheming="False"
    AllowPaging="True" OnPreRender="GridView1_PreRender" >
    <Columns>
      <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
      <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
      <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" SortExpression="SupplierID" Visible="False" />
      <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" Visible="False" />
      <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" SortExpression="QuantityPerUnit" />
      <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" DataFormatString="{0:c}" >
      <ItemStyle HorizontalAlign="Right" />
      </asp:BoundField>
      <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" SortExpression="UnitsInStock" />
      <asp:BoundField DataField="UnitsOnOrder" HeaderText="UnitsOnOrder" SortExpression="UnitsOnOrder" Visible="False" />
      <asp:BoundField DataField="ReorderLevel" HeaderText="ReorderLevel" SortExpression="ReorderLevel" />
      <asp:CheckBoxField DataField="Discontinued" HeaderText="Discontinued" SortExpression="Discontinued" Visible="False" />
      <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
    </Columns>
      <HeaderStyle CssClass="bg-primary" />
    <FooterStyle CssClass="bg-info"></FooterStyle>
      <PagerStyle CssClass="pagination-ys" />
</asp:GridView>

    </div>
  </div>
  <br />

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Alphabetical list of products] WHERE ([ProductName] LIKE '%' + @ProductName + '%')">
  <SelectParameters>
    <asp:ControlParameter ControlID="txtSearchProduct" DefaultValue="%" Name="ProductName" PropertyName="Text" Type="String" />
  </SelectParameters>
  </asp:SqlDataSource>

</asp:Content>
