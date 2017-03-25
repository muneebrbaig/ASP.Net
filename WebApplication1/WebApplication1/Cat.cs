using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;

namespace WebApplication1
{
	public class Cat
	{
		public Color MyColor { get; set; }

		private void PrivMethod()
		{
			//doing nothing.
		}

		protected void ProtMethod()
		{
			//doing nothing
		}
		public int Age { get; set; }

		public string Speak(string text)
		{
			return "Meow " + text + ". I am " + Age + " years old.";
		}

		public int AgeInMonths(int age)
		{
			return age * 12;
		}

	}

	public class PersianCat : Cat
	{
		private void SomeMethod()
		{
			this.ProtMethod();
		}
	}

}