using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RichControls
{
	public partial class _Default : Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Unnamed1_Click(object sender, EventArgs e)
		{
			foreach (DateTime dt in Calendar1.SelectedDates)
			{
				divCalResult.InnerHtml += dt.ToLongDateString() + "<br />";
			}
		}
	}
}