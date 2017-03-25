using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace GridViewTest
{
	public partial class Categories : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			LoadData();
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
		private void LoadData()
		{
			SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
			conn.Open();

			SqlCommand cmd = new SqlCommand();
			cmd.Connection = conn;
			cmd.CommandType = CommandType.Text;
			cmd.CommandText = "select * from categories";

			GridView1.DataSource = cmd.ExecuteReader();
			GridView1.DataBind();

			conn.Close();
		}
		
		protected void btnAddNewCat_OnClick(object sender, EventArgs e)
		{
			SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
			conn.Open();

			SqlCommand cmd = new SqlCommand();
			cmd.Connection = conn;
			cmd.CommandType = CommandType.Text;

			cmd.CommandText = "insert into categories (CategoryName, Description) values('" +
				txtNewCategory.Text + "','" + txtNewDescription.Text + "')";
			cmd.ExecuteNonQuery();
			txtNewCategory.Text = txtNewDescription.Text = string.Empty;

			cmd.CommandText = "select * from categories";
			GridView1.DataSource = cmd.ExecuteReader();
			GridView1.DataBind();

			conn.Close();

		}
	}
}