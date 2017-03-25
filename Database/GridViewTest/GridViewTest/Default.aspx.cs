using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GridViewTest
{
	public partial class _Default : Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
		}

		protected void GridView1_PreRender(object sender, EventArgs e)
		{
			GridView gv = (GridView)sender;
			gv.UseAccessibleHeader = false;
			if ((gv.ShowHeader == true && gv.Rows.Count > 0)
					|| (gv.ShowHeaderWhenEmpty == true))
			{
				//Force GridView to use <thead> instead of <tbody> 
				gv.HeaderRow.TableSection = TableRowSection.TableHeader;
			}
			if (gv.ShowFooter == true && gv.Rows.Count > 0)
			{
				//Force GridView to use <tfoot> instead of <tbody> 
				gv.FooterRow.TableSection = TableRowSection.TableFooter;
			}

			
		}
	}
}