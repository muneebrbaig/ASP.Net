using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace AjaxPageMethods
{
  /// <summary>
  /// Summary description for TestService
  /// </summary>
  [WebService(Namespace = "http://tempuri.org/")]
  [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
  [System.ComponentModel.ToolboxItem(false)]
  // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
  [System.Web.Script.Services.ScriptService]
  public class TestService : System.Web.Services.WebService
  {

    [WebMethod]
    public string HelloWorld()
    {
      return "Hello World";
    }

    [WebMethod]
    public string GetServerTime()
    {
      return String.Format("The server time is {0}.",
                DateTime.Now);
    }

    /// <summary>
    /// Exposing Web Services to Client Script
    ///  https://goo.gl/6s5roc
    /// </summary>
    /// <param name="input"></param>
    /// <returns></returns>
    [WebMethod]
    public string EchoInput(string input)
    {
      // Method code goes here.
      return input + "<br>" + DateTime.Now;
    }

  }
}
