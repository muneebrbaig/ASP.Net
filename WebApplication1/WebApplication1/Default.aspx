<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
  <asp:TextBox runat="server"
    ID="txtSalary" Text="" placeholder="Enter your salary"></asp:TextBox>
  <asp:Button runat="server"
    ID="submit" Text="OK" OnClick="submit_Click"/>
</asp:Content>
