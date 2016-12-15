<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Data from Products
    </h2>
   <div class="col-md-6 ">
   
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
           DataKeyNames="ProductID" DataSourceID="SqlDataSource1" 
           EnableTheming="False" 
           CssClass="table table-striped table-hover table-bordered">
           <Columns>
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
                   SortExpression="UnitPrice" DataFormatString="{0:C2}" >
               <ItemStyle CssClass="pull-right" />
               </asp:BoundField>
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
           </Columns>
            <HeaderStyle CssClass="text-info" />
            <PagerStyle CssClass="pagination-ys" />
       </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:northwinddbConnectionString %>" 
           SelectCommand="SELECT * FROM [Alphabetical list of products]">
       </asp:SqlDataSource>
   
   </div>
</asp:Content>
