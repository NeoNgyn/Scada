using FINAL_G17.DAL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FINAL_G17
{
    public partial class SensorData : System.Web.UI.Page
    {
        SQLquery _sql;
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

            string connectionString = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
            _sql = new SQLquery(connectionString);
        }

        void HienThiGiaTriCamBien()
        {
            string htm1 = "<table";
            string htm2 = " class";
            char htm3 = '=';
            char htm4 = '"';
            string htm5 = "table";
            string htm6 = " table-striped";
            string htm7 = " table-bordered";
            string htm8 = " table-hover";
            char htm9 = '"';
            string htm10 = " id";
            char htm11 = '=';
            char htm12 = '"';
            string htm13 = "sample";
            char htm14 = '_';
            string htm15 = "1";
            char htm16 = '"';
            char htm17 = '>';
            string htm18 =
                "<thead>" +
                "<tr>" +
                "<th> MÃ CẢM BIẾN </th>" +
                "<th> THÔNG TIN CẢM BIẾN </th>" +
                "<th> GIÁ TRỊ </th>" +
                "<th>THỜI GIAN CẬP NHẬT DỮ LIỆU </th>" +
                "</tr>" +
                "</thead>";
            string htm19 = "<tbody>";
            string html0 = htm1 + htm2 + htm3 + htm4 + htm5 + htm6 + htm7 + htm8 + htm9 + htm10 + htm11 + htm12 + htm13 + htm14 + htm15 + htm16 + htm17 + htm18 + htm19;

            string html2 = "";

            DataTable cb = _sql.GetTable_Scada1("*"); Console.Write(cb);
            for (int i = 0; i < cb.Rows.Count; i++)
            {
                string tencambien = cb.Rows[i]["ID"].ToString();
                string thongtin = cb.Rows[i]["NAME"].ToString();
                double giatri = Convert.ToDouble(cb.Rows[i]["VALUE"]);
                DateTime thoigian = Convert.ToDateTime(cb.Rows[i]["TIME"]);
                html2 +=
                    "<tr>" +
                    "<td>" + tencambien + "</td>" +
                    "<td>" + thongtin + "</td>" +
                    "<td>" + giatri + "</td>" +
                    "<td>" + thoigian.ToString("dd/MM/yyyy HH:mm:ss") + "</td>" +
                    "</tr>";
            }

            string html3 = "</tbody>";
            string html4 = "</table>";
            Literal_HienThiGiaTriCamBien.Text = html0 + html2 + html3 + html4;
        }

        void BangHienThiGiaTriCamBien(
    string SensorID,
    string Starttime,
    string Endtime)
        {
            string htm1 = "<table";
            string htm2 = " class";
            char htm3 = '=';
            char htm4 = '"';
            string htm5 = "table";
            string htm6 = " table-striped";
            string htm7 = " table-bordered";
            string htm8 = " table-hover";
            char htm9 = '"';
            string htm10 = " id";
            char htm11 = '=';
            char htm12 = '"';
            string htm13 = "sample";
            char htm14 = '_';
            string htm15 = "1";
            char htm16 = '"';
            char htm17 = '>';
            string htm18 =
                "<thead>" +
                "<tr>" +
                "<th> Mã cảm biến </th>" +
                "<th> Thông tin cảm biến </th>" +
                "<th> Giá trị </th>" +
                "<th> Thời gian cập nhật dữ liệu </th>" +
                "</tr>" +
                "</thead>";
            string htm19 = "<tbody>";
            string html0 = htm1 + htm2 + htm3 + htm4 + htm5 + htm6 + htm7 + htm8 + htm9 + htm10 + htm11 + htm12 + htm13 + htm14 + htm15 + htm16 + htm17 + htm18 + htm19;

            string html2 = "";
            DataTable cb = new DataTable();
            if (SensorID == "*")
            {
                cb = _sql.GetTable_Scada(Starttime, Endtime);
            }
            else
            {
                cb = _sql.GetTable_Scada(SensorID, Starttime, Endtime);
            }

            for (int i = 0; i < cb.Rows.Count; i++)
            {
                string tencambien = cb.Rows[i]["ID"].ToString();
                string thongtin = cb.Rows[i]["NAME"].ToString();
                double giatri = Convert.ToDouble(cb.Rows[i]["VALUE"]);
                DateTime thoigian = Convert.ToDateTime(cb.Rows[i]["TIME"]);
                html2 +=
                    "<tr>" +
                    "<td>" + tencambien + "</td>" +
                    "<td>" + thongtin + "</td>" +
                    "<td>" + giatri.ToString() + "</td>" +
                    "<td>" + thoigian.ToString("dd/MM/yyyy HH:mm:ss") + "</td>" +
                    "</tr>";
            }

            string html3 = "</tbody>";
            string html4 = "</table>";
            Literal_BangHienThiGiaTriCamBien.Text = html0 + html2 + html3 + html4;
        }

        protected void BtnXem_Click(object sender, EventArgs e)
        {
            string SensorID = tbxSensorID.Text;
            string Starttime = tbxStarttime.Text;
            string Endtime = tbxEndtime.Text;
            BangHienThiGiaTriCamBien(SensorID, Starttime, Endtime);
        }

        protected void BtnXemtatca_Click(object sender, EventArgs e)
        {
            HienThiGiaTriCamBien();
        }
    }
}