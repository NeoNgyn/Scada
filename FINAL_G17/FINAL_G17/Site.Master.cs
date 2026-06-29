using System;
using System.Web.UI;

namespace FINAL_G17
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                topWelcomeBar.Visible = true;
                litUsername.Text = Session["Username"].ToString();
            }
            else
            {
                topWelcomeBar.Visible = false;
            }
        }

        protected void lbtnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Login.aspx");
        }
    }
}