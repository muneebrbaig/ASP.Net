using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMatrix.WebData;

namespace SimpleMembership.Account
{
	public partial class Login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void MyLogin_Authenticate(object sender, AuthenticateEventArgs e)
		{
			e.Authenticated = WebSecurity.Login(MyLogin.UserName, MyLogin.Password);
		}
	}
}