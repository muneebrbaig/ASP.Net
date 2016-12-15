<%@ Page Title="" Language="C#" MasterPageFile="~/gentelella-master.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
<br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:relationshipConnectionString %>" 
                SelectCommand="SELECT * FROM [Country]"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:relationshipConnectionString %>" 
                SelectCommand="SELECT * FROM [City] WHERE ([CountryId] = @CountryId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" 
                        Name="CountryId" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="OK" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Height="70px" Width="402px"></asp:Label>
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>

