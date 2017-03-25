using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
	public partial class About : Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			DropDownList2.Items.Add("East");
			DropDownList2.Items.Add("West");
			DropDownList2.Items.Add("South");
			DropDownList2.Items.Add("Malir");
			DropDownList2.Items.Add("Central");
			DropDownList2.Items.Add("Korangi");
		}

		protected void CreateCat_Click(object sender, EventArgs e)
		{
			Cat myCat = new Cat();
			myCat.MyColor= Color.Brown;
			myCat.Age = 3;
			Result.Text = myCat.Speak(Message.Text);
			AgeInMonths.Text = myCat.AgeInMonths(myCat.Age).ToString();
		}
	}
}