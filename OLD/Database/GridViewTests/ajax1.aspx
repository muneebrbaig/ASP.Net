<%@ Page Title="" Language="C#" MasterPageFile="~/gentelella-master.master" AutoEventWireup="true"
    CodeFile="ajax1.aspx.cs" Inherits="ajax1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true">
    </asp:ScriptManager>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
