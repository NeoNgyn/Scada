using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FINAL_G17
{
    public partial class Information : System.Web.UI.Page
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
            }
        }
    }
}