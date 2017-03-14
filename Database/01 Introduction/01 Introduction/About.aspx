<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="_01_Introduction.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
  <div class="panel panel-primary">
    <div class="panel-heading">
      <div class="col-md-4">
        <div class="form-group">
          <label class="control-label" for="ddlCat">Categories</label>
          <asp:DropDownList ID="ddlCat" CssClass="form-control"  runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryID"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]"></asp:SqlDataSource>
        </div>
        
      </div>
    </div>
    <div class="panel-body">
     
      <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-condensed" DataSourceID="SqlDataSource2">
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Alphabetical list of products] WHERE ([CategoryID] = @CategoryID)">
        <SelectParameters>
          <asp:ControlParameter ControlID="ddlCat" DefaultValue="1" Name="CategoryID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
      </asp:SqlDataSource>
     
    </div>
  </div>
</asp:Content>
