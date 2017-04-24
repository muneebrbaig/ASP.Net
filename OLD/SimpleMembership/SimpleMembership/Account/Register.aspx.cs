using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMatrix.WebData;

namespace SimpleMembership.Account
{
	public partial class Register : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnRegister_Click(object sender, EventArgs e)
		{
			WebSecurity.CreateUserAndAccount(Email.Text, Password.Text);
			Response.Redirect("~/Account/Login.aspx");


		}
	}
}