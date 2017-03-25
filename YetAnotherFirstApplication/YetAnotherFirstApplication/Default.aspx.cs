using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YetAnotherFirstApplication
{
	public partial class _Default : Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_OnClick(object sender, EventArgs e)
		{
			TextBox1.Text = DateTime.Now.ToShortDateString();
		}
	}
}