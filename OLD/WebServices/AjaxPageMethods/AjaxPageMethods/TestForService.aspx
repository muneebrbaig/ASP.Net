<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="TestingService.aspx.cs" Inherits="AjaxPageMethod.TestingService" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        <Services>
            <asp:ServiceReference Path="LearningService.asmx" />
        </Services>
    </asp:ScriptManager>
    <script type="text/javascript">
        function GetData() {
            AjaxPageMethod.LearningService.HelloWorld(OnSucceeded);
        }


        function OnSucceeded(result) {

            var rsltElem = document.getElementById("Results");
            rsltElem.innerHTML = result;
        }

        function GetServerTime() {
            AjaxPageMethod.LearningService.GetServerTime(OnSucceeded);
        }

        // This function calls the Web Service method.  
        function EchoUserInput() {
            var echoElem = document.getElementById("EnteredValue");
            AjaxPageMethod.LearningService.EchoInput(echoElem.value, OnSucceeded);
        }

        function SearchData() {
            var echoElem = document.getElementById("EnteredValue");
            AjaxPageMethod.LearningService.SearchData(echoElem.value, OnSucceeded);            
        }
    </script>
    <div>
        <h2>
            Server Time</h2>
        <p>
            Calling a service that returns the current server time.</p>
        <input id="GetDataBtn" type="button" value="Get Data" onclick="GetData()" />
        <br />
        <asp:Button ID="Button1" runat="server" Text="OK" OnClick="Button1_Click" />
        <br />
        <input id="ServerTime" type="button" value="Server Time" onclick="GetServerTime()" />
    </div>
    <hr />
    <div>
        <h2>
            Simple Web Service</h2>
        <p>
            Calling a simple service that echoes the user's input and returns the current server
            time.</p>
        <input id="EnteredValue" type="text" />
        <input id="EchoUserIn" type="button" value="Search" onclick="SearchData()" />
    </div>
    <hr />
    <div>
        <span id="Results"></span>
    </div>
</asp:Content>
