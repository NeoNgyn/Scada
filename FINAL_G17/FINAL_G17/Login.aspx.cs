using System;
using System.Data.SqlClient;
using System.Web.UI;
using FINAL_G17.DAL; 

namespace FINAL_G17
{
    public partial class WebForm1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                ShowMessage("Vui lòng nhập tài khoản và mật khẩu.");
                return;
            }

            if (CheckLogin(username, password))
            {
                SaveLoginHistory(username);
                Session["Username"] = username;
                Response.Redirect("~/Home.aspx");
            }
            else
            {
                ShowMessage("Tài khoản hoặc mật khẩu không đúng.");
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Register.aspx");
        }

        private bool CheckLogin(string username, string password)
        {
            string query = "SELECT COUNT(1) FROM Account WHERE Username = @Username AND [Password] = @Password";

            using (SqlConnection conn = Database.GetConnection()) 
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", password);

                conn.Open();
                int count = (int)cmd.ExecuteScalar();
                return count > 0;
            }
        }

        private bool SaveLoginHistory(string username)
        {
            string query = @"INSERT INTO LoginHistory (Username, LoginTime)
                     VALUES (@Username, @LoginTime)";

            try
            {
                using (SqlConnection conn = Database.GetConnection())
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@LoginTime", DateTime.Now);

                    conn.Open();
                    return cmd.ExecuteNonQuery() > 0;
                }
            }
            catch
            {
                return false;
            }
        }

        private void ShowMessage(string message)
        {
            lblMessage.Text = message;
            lblMessage.Visible = true;
        }
    }
}