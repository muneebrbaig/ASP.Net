<%@ Page Language="C#" AutoEventWireup="true"
  CodeBehind="TestForService.aspx.cs"
  Inherits="AjaxPageMethods.TestForService" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
  <!--
    https://goo.gl/e11HHd
    -->
  <script type="text/javascript">

    // This function calls the Web Service method.  
    function GetServerTime() {
      AjaxPageMethods.TestService.GetServerTime(OnSucceeded);

    }
    function GetHelloWorld() {
      AjaxPageMethods.TestService.HelloWorld(OnSucceeded);
    }

    // This function calls the Web Service method.  
    function EchoUserInput() {
      var echoElem = document.getElementById("EnteredValue");
      AjaxPageMethods.TestService.EchoInput(echoElem.value, OnSucceeded);
    }


    // This is the callback function that
    // processes the Web Service return value.
    function OnSucceeded(result) {
      var rsltElem = document.getElementById("Results");
      rsltElem.innerHTML = result;
    }

  </script>
</head>
<body>
  <form id="form1" runat="server">
    <div>
      <asp:ScriptManager ID="ScriptManager1" runat="server">
        <Services>
          <asp:ServiceReference Path="TestService.asmx" />
        </Services>
      </asp:ScriptManager>
    </div>
    <div>
      <h2>Server Time</h2>
      <p>Calling a service that returns the current server time.</p>

      <input id="GetButton" type="button"
        value="GetTime" onclick="GetServerTime()" />
    </div>
    <hr />
    <div>
                <h2>Simple Web Service</h2>
                    <p>Calling a simple service that echoes the user's input and 
                        returns the current server time.</p>
                    <input id="EnteredValue" type="text" />
                    <input id="EchoButton" type="button" 
                        value="Echo" onclick="EchoUserInput()" />
            </div>
  </form>

  <hr />

  <div>
    <span id="Results"></span>
  </div>
</body>
</html>
