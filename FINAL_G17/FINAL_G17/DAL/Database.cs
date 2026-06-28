using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FINAL_G17.DAL
{
    public class Database
    {
        public static SqlConnection GetConnection()
        {
            string connStr =
                ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

            return new SqlConnection(connStr);
        }
    }
}