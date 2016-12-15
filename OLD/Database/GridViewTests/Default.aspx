<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="head">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
   

    <asp:Button ID="btnLoad" CssClass="btn btn-danger" runat="server" onclick="btnLoad_Click" Text="Load" />
    <input id="Button1" class="gradientbtn gradientbtn-purple&quot;" type="button" 
        value="button" /><br />
    <div class="table table-striped">
    
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" 
            EnableTheming="False">
    </asp:GridView>
    </div>
    <br />
    <hr />
    <asp:Label ID="Label1" runat="server" Text="Enter the New Country"></asp:Label>
    <asp:TextBox ID="txtNewCountry"
        runat="server"></asp:TextBox>

    <asp:Button ID="btnInsert" runat="server" onclick="btnInsert_Click" 
        Text="Insert" />


</asp:Content>
