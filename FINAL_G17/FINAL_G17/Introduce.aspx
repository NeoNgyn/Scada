<%@ Page Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Home.aspx.cs"
    Inherits="FINAL_G17.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- GIỚI THIỆU CHUNG -->
    <div style="background-color: white; padding: 40px 60px; text-align: center;">
        <h2 style="color: #228B22; font-weight: 600; font-size: 2rem; margin-bottom: 20px;">GIỚI THIỆU VỀ HỆ THỐNG
        </h2>
    </div>

    <%-- Container căn giữa --%>
    <div style="max-width: 900px; margin: 0 auto; padding: 0 20px;">

        <!-- PHẦN 1: HỆ THỐNG SẢN XUẤT VIÊN NÉN GỖ -->
        <div style="padding: 40px 0; background-color: #ffffff; text-align: center;">
            <h2 style="color: firebrick; font-weight: 600; font-size: 1.8rem; margin-bottom: 16px;">Hệ thống sản xuất viên nén gỗ
            </h2>
            <img src="assets/img/img1.png" alt="Image 1" style="width: 900px; height: 400px" />
            <p style="font-size: 1.2rem; color: #333; line-height: 1.7; text-align: left; margin: 20px 0px">
                Sản xuất viên nén gỗ là quá trình biến đổi các loại vật liệu dạng sợi như mùn cưa, vụn gỗ, cỏ khô, rơm rạ, v.v. thành viên nén có hình dạng đồng nhất. Quá trình này bao gồm các bước sau:
            </p>
            <img src="assets/img/sanxuat.png" alt="Quy trình nén gỗ" style="width: 900px; height: 500px" />
            <p style="font-size: 1.2rem; color: #333; line-height: 1.7; text-align: left; margin-top: 20px;">
                1. <strong>Thu gom nguyên liệu:</strong> Nguyên liệu phải được thu gom từ các nguồn khác nhau. Các nguồn nguyên liệu phổ biến bao gồm mùn cưa, vụn gỗ, cỏ khô, rơm rạ, v.v...<br />
                2. <strong>Nghiền nguyên liệu:</strong> Nguyên liệu được nghiền thành dạng mùn cưa với kích thước phù hợp cho việc sản xuất viên nén gỗ.<br />
                3. <strong>Sấy nguyên liệu:</strong> Mùn cưa sau đó được sấy khô để giảm độ ẩm, tăng hiệu suất đốt và giảm khối lượng.<br />
                4. <strong>Ép viên:</strong> Mùn cưa sau đó được ép thành viên nén dưới áp lực và nhiệt độ cao.<br />
                5. <strong>Nguội viên:</strong> Viên nén sau khi được ép phải được làm nguội trước khi đóng gói và vận chuyển.<br />
                6. <strong>Sàng thành phẩm:</strong> Viên nén sau cùng được sàng lọc để loại bỏ các phần không đạt chuẩn.<br />
                7. <strong>Đóng bao:</strong> Cuối cùng, viên nén gỗ được đóng gói vào bao bì phù hợp để vận chuyển và bảo quản.
            </p>
        </div>

        <!-- PHẦN 2: HỆ THỐNG LÒ HƠI ĐỐT VIÊN NÉN GỖ -->
        <div style="padding: 40px 0; background-color: #ffffff; text-align: center;">
            <h2 style="color: firebrick; font-weight: 600; font-size: 1.8rem; margin-bottom: 16px;">Hệ thống lò hơi đốt viên nén gỗ
            </h2>
            <img src="assets/img/img2.png" alt="Image 2" style="width: 900px; height: 400px" />
            <p style="font-size: 1.2rem; color: #333; line-height: 1.7; text-align: left; margin: 20px 0px">
                Lò hơi tầng sôi đốt viên nén gỗ, mùn cưa, bã điều rời (nguyên liệu biomass nói chung) là công nghệ mới được phát triển và ứng dụng phổ biến trong nhiều năm gần đây để đáp ứng nhu cầu về tiết kiệm chi phí vận hành lò hơi, hạ chi phí giá thành sản phẩm đầu ra. Quá trình này bao gồm các bước sau:
            </p>
            <img src="assets/img/dotchay.png" alt="Quy trình đốt viên nén gỗ" style="width: 900px; height: 500px" />
            <p style="font-size: 1.2rem; color: #333; line-height: 1.7; text-align: left; margin-top: 20px;">
                1. <strong>Đưa viên nén gỗ vào buồng đốt lò hơi</strong> để bắt đầu gia nhiệt.<br />
                2. <strong>Mở van bơm nước</strong> để nước buồng đốt để tăng nhiệt độ nước để nước bốc hơi và có áp suất cao.<br />
                3. <strong>Mở bộ lọc bụi</strong> để lại bỏ các khí có hại cho môi trường trong quá trình đốt trước khi thải ra ngoài.<br />
                4. <strong>Dẫn ống hơi nước có áp suất cao</strong> vào máy phát để sản xuất điện năng.<br />
                5. <strong>Bơm các tro tàn còn dư</strong> khi đốt của viên nén gỗ sau khi đốt vào bồn để đưa đi xử lý.<br />
                6. <strong>Khi mực nước có trong lò hơi còn quá ít</strong> sẽ bắt đầu bơm nước.
            </p>
        </div>

    </div>

</asp:Content>
