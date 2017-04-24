using System.Configuration;

namespace SimpleMembership
{
	public class Config
	{
		//public static string ConnectionStringName => ConfigurationManager.ConnectionStrings["SimpleMembershipConnection"].ConnectionString ??
		//ConfigurationManager.AppSettings["DefaultConnection"] ?? "DefaultConnection";
		public static string ConnectionStringName => ConfigurationManager.AppSettings["DefaultConnectionName"] ?? "DefaultConnection";

		public static string UsersTableName => ConfigurationManager.AppSettings["UsersTableName"] ?? "Users";

		public static string UsersPrimaryKeyColumnName => ConfigurationManager.AppSettings["UsersPrimaryKeyColumnName"] ?? "Id";

		public static string UsersUserNameColumnName => ConfigurationManager.AppSettings["UsersUserNameColumnName"] ?? "Email";
	}
}