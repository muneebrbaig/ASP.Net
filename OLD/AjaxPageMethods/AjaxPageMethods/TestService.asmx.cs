using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace AjaxPageMethod
{
    /// <summary>
    /// Summary description for LearningService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class LearningService : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            List<string> lstData = GetProductsList();

            string output = "<ul>";
            foreach (string s in lstData)
            {
                output += "<li>" + s + "</li>";
            }
            //for (int x = 1; x <= 10; x++)
            //    output += "<li>" + x + "</li>";
            output += "</ul>";
            /* string output = "<select>";
            foreach (string s in lstData)
            {
                output += "<option>" + s + "</option>";
            }
            //for (int x = 1; x <= 10; x++)
            //    output += "<li>" + x + "</li>";
            output += "</select>";*/
            return output;
        }

        private static List<string> GetStudentList()
        {
            List<string> lstData = new List<string>();
            lstData.Add("Sadaqat");
            lstData.Add("Arsalan");
            lstData.Add("Bilal");
            lstData.Add("Faisal");
            lstData.Add("Owais");
            lstData.Add("Qasim");
            lstData.Add("Abdul Rehman");
            return lstData;
        }

        private static List<string> GetProductsList()
        {
            List<string> lstData = new List<string>();
            lstData.Add("Tea");
            lstData.Add("Coffe");
            lstData.Add("Bread");
            lstData.Add("Milk");
            lstData.Add("Toffee");
            lstData.Add("Syrup");
            lstData.Add("Chocolate");
            return lstData;
        }

        [WebMethod]
        public string GetServerTime()
        {
            return DateTime.Now.ToString();
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
        
        [WebMethod]
        public string SearchData(string search) 
        {

            List<string> lstData = GetProductsList();
            var result = lstData.Where(s=>s.Contains(search));
            string output = "<ul>";
            foreach (string s in result)
            {
                output += "<li>" + s + "</li>";
            }
            //for (int x = 1; x <= 10; x++)
            //    output += "<li>" + x + "</li>";
            output += "</ul>";

            return output;        
        }

    }
}
