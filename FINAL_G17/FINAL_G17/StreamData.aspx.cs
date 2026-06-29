using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using FINAL_G17.DAL;

namespace FINAL_G17
{
    public partial class WebForm4 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Kiểm tra xem người dùng đã đăng nhập hay chưa
                if (Session["username"] == null)
                {
                    // Nếu chưa đăng nhập, chuyển hướng về trang đăng nhập
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    // Người dùng đã đăng nhập, thực hiện các hành động cần thiết
                    //UserDetail.Text = "Welcome, " + Session["username"].ToString();
                }
                LoadLatestSensors();
            }
        }

        private void LoadLatestSensors()
        {
            string query = @"SELECT TOP 5 ID, NAME, VALUE, [TIME]
                             FROM Sensor
                             ORDER BY [TIME] DESC";

            DataTable dt = new DataTable();

            using (SqlConnection conn = Database.GetConnection())
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }

            rptSensors.DataSource = dt;
            rptSensors.DataBind();
        }
    }
}