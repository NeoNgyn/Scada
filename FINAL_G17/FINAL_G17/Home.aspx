<%@ Page Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Home.aspx.cs"
    Inherits="FINAL_G17.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- GIỚI THIỆU CHUNG -->
    <div style="background-color: white; padding: 40px 60px; text-align: center;">
        <h2 style="color: #228B22; font-weight: 600; font-size: 2rem; margin-bottom: 20px;">
            HỆ THỐNG SẢN XUẤT VIÊN NÉN GỖ
        </h2>
        <p style="background-color: white; color: saddlebrown; padding: 16px 24px; display: inline-block; font-size: 1.3rem; line-height: 1.7;">
            Là hệ thống chủ yếu dựa vào các nguyên liệu tự nhiên, đặc biệt là vỏ trấu, cọ và gỗ nên tạo 
            ra nguồn năng lượng sạch, góp phần hạn chế việc phá hoại môi trường, vẫn đảm bảo việc 
            sản xuất không bị giảm sút
        </p>
        <br /><br />
        <h3 style="background-color: white; color: #228B22; font-weight: 600; display: inline-block; padding: 5px 30px; font-size: 2rem;">
            GỒM 2 PHẦN
        </h3>
    </div>

    <%-- Container căn giữa --%>
    <div style="max-width: 900px; margin: 0 auto; padding: 0 20px;">

        <!-- PHẦN 1: DÂY TRUYỀN SẢN XUẤT VIÊN NÉN GỖ -->
        <div style="padding: 40px 0; background-color: #ffffff; text-align: center;">
            <h2 style="color: #228B22; font-weight: 600; font-size: 1.8rem; margin-bottom: 16px;">
                Dây truyền sản xuất viên nén gỗ
            </h2>
            <iframe width="800" height="500"
                src="https://www.youtube.com/embed/exa7jbuLuFY?si=CvApizDcigsdcGfK"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                referrerpolicy="strict-origin-when-cross-origin" allowfullscreen
                style="display: block; margin: 0 auto 20px auto; max-width: 100%;"></iframe>
            <p style="font-size: 1.2rem; color: #333; line-height: 1.7; text-align: center;">
                Viên nén gỗ là các hạt gỗ nén được sử dụng làm nhiên liệu. Chúng được sản xuất từ các 
                sản phẩm thải từ gỗ như dăm, mùn cưa, sau đó được ép thành những viên nén nhỏ và cứng. 
                Đây là loại nhiên liệu sinh học giúp bảo vệ môi trường hiệu quả hiện nay.
            </p>
        </div>

        <!-- PHẦN 2: LÒ HƠI -->
        <div style="padding: 40px 0; background-color: #ffffff; text-align: center;">
            <h2 style="color: #228B22; font-weight: 600; font-size: 1.8rem; margin-bottom: 16px;">
                Lò hơi
            </h2>
            <iframe width="800" height="500"
                src="https://www.youtube.com/embed/P_3UQVSh21E?si=6henh9pBr65rzDsz"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                referrerpolicy="strict-origin-when-cross-origin" allowfullscreen
                style="display: block; margin: 0 auto 20px auto; max-width: 100%;"></iframe>
            <p style="font-size: 1.2rem; color: #333; line-height: 1.7; text-align: center;">
                Lò hơi sử dụng viên nén gỗ là một giải pháp tiết kiệm chi phí và thân thiện với môi trường. 
                Viên nén gỗ có giá thành thấp hơn so với các nhiên liệu hóa thạch như than đá và dầu mỏ. 
                Ngoài ra, việc sử dụng viên nén gỗ cũng giúp giảm thiểu chi phí vận chuyển và lưu trữ, 
                vì viên nén gỗ có khối lượng đồng nhất và dễ dàng xử lý.
            </p>
        </div>

    </div>

</asp:Content>