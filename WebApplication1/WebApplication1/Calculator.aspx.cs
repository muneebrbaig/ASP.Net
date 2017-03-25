using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
	public partial class Calculator : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		public void Calculate()
		{
			var area = Convert.ToDouble(Area.Text);
			var price = Convert.ToDouble(Price.Text);
		}

		protected void Caclulate_Click(object sender, EventArgs e)
		{
			Calculate();
		}
	}
}