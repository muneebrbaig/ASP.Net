<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="DbInteraction._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to ASP.NET!
    </h2>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        <Services>
            <asp:ServiceReference Path="DbMgrService.asmx" />
        </Services>
    </asp:ScriptManager>
    <script type="text/javascript">
        function GetData() {
            DbInteraction.DbMgrService.GetData(OnSucceeded);
        }


        function OnSucceeded(result) {

            var rsltElem = document.getElementById("Results");
            rsltElem.innerHTML = result;
        }

        
    </script>
    <p>
        Calling a service that returns the current server time.</p>
    <input id="GetDataBtn" type="button" value="Get Data" onclick="GetData()" />
    <asp:Button ID="Button1" runat="server" Text="Refresh" />
    <hr />
    <div>
        <span id="Results"></span>
    </div>
</asp:Content>
