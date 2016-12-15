using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadData();
    }
    protected void btnLoad_Click(object sender, EventArgs e)
    {
        LoadData();

    }

    private void LoadData()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["GridViewTest"].ToString());
        conn.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from country";


        GridView1.DataSource = cmd.ExecuteReader();
        GridView1.DataBind();

        conn.Close();
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["GridViewTest"].ToString());
        conn.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "insert into country (country_name) values('" + txtNewCountry.Text + "')";
        cmd.ExecuteNonQuery();


        cmd.CommandText = "select * from country";
        GridView1.DataSource = cmd.ExecuteReader();
        GridView1.DataBind();

        conn.Close();
    }
}
