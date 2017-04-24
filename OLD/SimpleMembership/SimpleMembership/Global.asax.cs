using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using WebMatrix.WebData;
namespace SimpleMembership
{
	public class Global : HttpApplication
	{
		void Application_Start(object sender, EventArgs e)
		{
			// Code that runs on application startup
			RouteConfig.RegisterRoutes(RouteTable.Routes);
			BundleConfig.RegisterBundles(BundleTable.Bundles);
			InitializeSimpleMembership();
		}

		void InitializeSimpleMembership()
		{
			try
			{
				WebSecurity.InitializeDatabaseConnection(
					Config.ConnectionStringName,
					Config.UsersTableName,
					Config.UsersPrimaryKeyColumnName,
					Config.UsersUserNameColumnName,
					autoCreateTables: true);
			}
			catch (Exception ex)
			{
				throw new InvalidOperationException(
					"The ASP.NET Simple Membership database could not be initialized. For more information, please see http://go.microsoft.com/fwlink/?LinkId=256588",
					ex);
			}
		}
	}
}