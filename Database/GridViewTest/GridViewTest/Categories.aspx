<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="GridViewTest.Categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="panel panel-success">
    <div class="panel-heading">
      <div class="col-md-8 input-group">
        <span class="input-group-addon">Add New</span>
        <asp:TextBox ID="txtNewCategory" runat="server" autofocus="true"
          CssClass="form-control" placeholder="Category"></asp:TextBox>
        <asp:TextBox ID="txtNewDescription" runat="server" autofocus="true"
          CssClass="form-control" placeholder="Description"></asp:TextBox>
      </div>
      <asp:Button runat="server" CssClass="btn btn-success "  id="btnAddNewCat" OnClick="btnAddNewCat_OnClick"
        Text="Add"/>
      
    </div>
    <div class="panel-body">

      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True"
        CssClass="table table-hover table-condensed table-striped"
        EnableTheming="False"
        OnPreRender="GridView1_PreRender">
        <HeaderStyle CssClass="bg-primary" />
        <FooterStyle CssClass="bg-info"></FooterStyle>
        <PagerStyle CssClass="pagination-ys" />
      </asp:GridView>

    </div>
  </div>
  <br />

</asp:Content>
