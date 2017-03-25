<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" 
  AutoEventWireup="true" CodeBehind="About.aspx.cs" 
  Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
  <br />
  <br />
  <br />
  <asp:TextBox ID="Message" runat="server"></asp:TextBox>
  
  <asp:Button ID="CreateCat" runat="server" Text="Create Cat" OnClick="CreateCat_Click" />
  <asp:TextBox ID="Result" runat="server" Width="424px"></asp:TextBox>

  <br />
  <asp:TextBox ID="AgeInMonths" runat="server"></asp:TextBox>

  <asp:DropDownList ID="DropDownList1" runat="server">
    <asp:ListItem>Karachi</asp:ListItem>
    <asp:ListItem>Hyderabad</asp:ListItem>
    <asp:ListItem>Sukkar</asp:ListItem>
    <asp:ListItem>Nawabashah</asp:ListItem>
  </asp:DropDownList>
  <asp:DropDownList ID="DropDownList2" runat="server" Width="75px">
  </asp:DropDownList>

</asp:Content>
