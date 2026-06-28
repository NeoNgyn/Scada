using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FINAL_G17.DAL
{
    public class SQLquery
    {
        public string connectionString;

        public SQLquery(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public DataTable GetTable_Scada1(string SensorID)
        {
            string strSQL;
            if (SensorID == "*")
            {
                strSQL = "select * from Sensor order by TIME desc;";
            }
            else
            {
                strSQL = "select * from Sensor where ID = N'" + SensorID + "' order by TIME desc;";
            }
            return GetData(strSQL, connectionString);
        }

        public DataTable GetTable_Scada(string SensorID, string Starttime, string Endtime)
        {
            string strSQL = "select * from Sensor where ID=N'" + SensorID + "' " +
                            "and TIME > convert(datetime, '" + Starttime + "', 103) " +
                            "and TIME < convert(datetime,'" + Endtime + "', 103) order by TIME desc ";

            return GetData(strSQL, connectionString);
        }

        public DataTable GetTable_Scada(string Starttime, string Endtime)
        {
            string strSQL = "select * from Sensor where " +
                            " TIME > convert(datetime, '" + Starttime + "', 103) " +
                            "and TIME < convert(datetime,'" + Endtime + "', 103) order by TIME desc ";

            return GetData(strSQL, connectionString);
        }

        /// <summary>
        /// Executes the specified SQL query and returns the result as a DataTable.
        /// </summary>
        /// <param name="query">The SQL query to execute.</param>
        /// <param name="connectionString">The connection string to the database.</param>
        /// <returns>A DataTable containing the query results.</returns>

        public System.Data.DataTable GetData(string selectCommand, string connectionString)
        {
            DataTable dataTable = new DataTable();

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(selectCommand, connection))
                    {
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            connection.Open();
                            adapter.Fill(dataTable);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Lỗi khi truy xuất dữ liệu: " + ex.Message);
            }

            return dataTable;
        }
    }
}