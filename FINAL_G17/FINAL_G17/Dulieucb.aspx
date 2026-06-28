<%@ Page Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Dulieucb.aspx.cs"
    Inherits="FINAL_G17.Dulieucb" %>

<asp:Content
    ID="Content1"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <style data-purpose="custom-typography">
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap');
        .sensor-page-wrapper {
            font-family: 'Inter', sans-serif;
        }
    </style>
    <style data-purpose="table-styling">
        .sensor-table tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .sensor-table th, .sensor-table td {
            border-bottom: 1px solid #eeeeee;
        }
        .sensor-table th {
            color: #666;
            font-weight: 600;
        }
    </style>

    <main class="sensor-page-wrapper max-w-7xl mx-auto bg-white p-4 md:p-10">
        <header class="mb-8" data-purpose="page-header">
            <h1 class="text-3xl md:text-4xl font-bold text-gray-700 mb-6 uppercase">
                VUI LÒNG NHẬP CẢM BIẾN VÀ THỜI GIAN MUỐN TRUY XUẤT
            </h1>
            <p class="text-gray-500 mb-6 italic">
                VD: CB001 22/12/2022 9:00:25 22/12/2022 9:03:25
            </p>
        </header>
        
        <section class="mb-4" data-purpose="input-controls">
            <%-- Khu vực tìm kiếm theo ID và khoảng thời gian (Đặt trong UpdatePanel để không bị load lại trang) --%>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="flex flex-wrap items-center gap-2">
                        <asp:TextBox ID="tbxSensorID" runat="server" class="border border-gray-400 px-3 py-1 w-32 focus:ring-0 focus:border-blue-500" placeholder="Mã CB"></asp:TextBox>
                        <asp:TextBox ID="tbxStarttime" runat="server" class="border border-gray-400 px-3 py-1 w-32 focus:ring-0 focus:border-blue-500" placeholder="Bắt đầu"></asp:TextBox>
                        <asp:TextBox ID="tbxEndtime" runat="server" class="border border-gray-400 px-3 py-1 w-32 focus:ring-0 focus:border-blue-500" placeholder="Kết thúc"></asp:TextBox>
                        
                        <asp:Button ID="BtnXem" runat="server" Text="Xem giá trị cảm biến" OnClick="BtnXem_Click" class="bg-gray-100 hover:bg-gray-200 border border-gray-400 px-4 py-1 text-sm text-gray-700 transition-colors" />
                    </div>
                    
                    <%-- Nơi bảng dữ liệu tìm kiếm đổ ra (Hàm BangHienThiGiaTriCamBien sử dụng Literal này) --%>
                    <div class="mt-4 overflow-x-auto">
                        <asp:Literal ID="Literal_BangHienThiGiaTriCamBien" runat="server"></asp:Literal>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>

            <%-- Khu vực Xem tất cả dữ liệu (Nằm ngoài UpdatePanel theo đúng cấu trúc ảnh của bạn) --%>
            <div class="mt-4">
                <asp:Button ID="ButtonXemtatca" runat="server" Text="Xem tất cả giá trị cảm biến" OnClick="BtnXemtatca_Click" class="bg-gray-100 hover:bg-gray-200 border border-gray-400 px-4 py-1 text-sm text-gray-700 transition-colors" />
            </div>
            
            <%-- Nơi bảng dữ liệu "Xem tất cả" đổ ra (Hàm HienThiGiaTriCamBien sử dụng Literal này) --%>
            <div class="mt-4 overflow-x-auto">
                <asp:Literal ID="Literal_HienThiGiaTriCamBien" runat="server"></asp:Literal>
            </div>
        </section>

        <div class="m-top20 pagination text-center"></div>
    </main>
</asp:Content>