<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="WebApplication1.Calculator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  Area<asp:TextBox ID="Area" runat="server"></asp:TextBox>
  <br />
  Price/sq ft<asp:TextBox ID="Price" runat="server"></asp:TextBox>
  <br />
  <asp:Button ID="Caclulate" runat="server" OnClick="Caclulate_Click" Text="Caclulate" />
</asp:Content>
