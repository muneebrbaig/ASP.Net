using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DbInteraction
{
    public class DbMgr
    {
        public static List<string> GetData()
        {
            // 1. Instantiate the connection
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SvcConn"].ToString());

            SqlDataReader rdr = null;

            List<string> lstCities = new List<string>();

            try
            {
                // 2. Open the connection
                conn.Open();

                // 3. Pass the connection to a command object
                SqlCommand cmd = new SqlCommand("select * from City order by name", conn);

                //
                // 4. Use the connection
                //

                // get query results
                rdr = cmd.ExecuteReader();

                // print the CustomerID of each record
                while (rdr.Read())
                {
                    lstCities.Add(rdr["Name"].ToString());
                }
            }
            finally
            {
                // close the reader
                if (rdr != null)
                {
                    rdr.Close();
                }

                // 5. Close the connection
                if (conn != null)
                {
                    conn.Close();
                }
            }

            return lstCities;
        }
    }
}