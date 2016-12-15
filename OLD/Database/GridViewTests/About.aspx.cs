using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class About : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        FormView1.ChangeMode(FormViewMode.Edit);
        FormView1.DataBind();
    }
    protected override void OnPreInit(EventArgs e)
    {
        base.OnPreInit(e);
    }


    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
}
