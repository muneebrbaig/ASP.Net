﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
	public partial class _Default : Page
	{
		 
		const int PERCENT = 17;

		protected void Page_Load(object sender, EventArgs e)
		{
			
		}
		/// <summary>
		/// </summary>
		/// <param name="sender"></param>
		/// <param name="e"></param>
		protected void submit_Click(object sender, EventArgs e)
		{
			int salary =Convert.ToInt32(txtSalary.Text);
			//salary = salary + 500;

			var netSalary = CalculateSalary(salary, PERCENT);

			Response.Write(netSalary);
		}

		int CalculateSalary(int s, int t)
		{
			
			var taxable = t * s / 100;
			var ns = s - taxable;
			return ns;
		}
	}
}