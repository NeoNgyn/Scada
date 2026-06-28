using FINAL_G17.DAL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FINAL_G17
{
    public partial class Operation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    // Kiểm tra xem người dùng đã đăng nhập hay chưa
            //    if (Session["username"] == null)
            //    {
            //        // Nếu chưa đăng nhập, chuyển hướng về trang đăng nhập
            //        Response.Redirect("Login.aspx");
            //    }
            //    else
            //    {
            //        // Người dùng đã đăng nhập, thực hiện các hành động cần thiết
            //        //UserDetail.Text = "Welcome, " + Session["username"].ToString();

            //LoadLoginHistoryWithFilter(Session["username"].ToString());
            //    }
            //}

            LoadLoginHistoryWithFilter("Your_username");
        }

        private void LoadLoginHistoryWithFilter(string username)
        {
            try
            {
                using (SqlConnection connection = Database.GetConnection())
                {
                    connection.Open();

                    string query = "SELECT * FROM LoginHistory order by LoginTime desc ";
                    SqlDataAdapter adapter = new SqlDataAdapter(query, connection);

                    // Code used to retrieve login history for the specific user
                    //string query = "SELECT * FROM LoginHistory WHERE Username = @Username ORDER BY LoginTime DESC";

                    //SqlDataAdapter adapter = new SqlDataAdapter(query, connection);

                    //adapter.SelectCommand.Parameters.AddWithValue("@Username", username);

                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    GridView1.DataSource = dataTable;
                    GridView1.DataBind();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error loading login history: " + ex.Message);
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[2].Text != null && !string.IsNullOrEmpty(e.Row.Cells[2].Text))
                {
                    DateTime rawDate;
                    if (DateTime.TryParse(e.Row.Cells[2].Text, out rawDate))
                    {
                        e.Row.Cells[2].Text = rawDate.ToString("dd/MM/yyyy HH:mm:ss");
                    }
                }
            }
        }
    }
}