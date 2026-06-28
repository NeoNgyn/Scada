<%@ Page Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Information.aspx.cs"
    Inherits="FINAL_G17.Information" %>

<asp:Content
    ID="Content1"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <style data-purpose="card-flip-styles">
        .perspective-1000 {
            perspective: 1000px;
        }
        .preserve-3d {
            transform-style: preserve-3d;
        }
        .backface-hidden {
            backface-visibility: hidden;
            -webkit-backface-visibility: hidden;
        }
        .rotate-y-180 {
            transform: rotateY(180deg);
        }
        .card-inner {
            transition: transform 0.6s cubic-bezier(0.4, 0, 0.2, 1);
        }
        .group:hover .card-inner {
            transform: rotateY(180deg);
        }
    </style>

    <main class="max-w-7xl mx-auto px-4 md:px-6 py-8 font-sans bg-white">
        <section class="mb-24 flex flex-col items-center">
            <div class="text-center max-w-3xl mx-auto mb-12">
                <p class="text-base md:text-lg text-gray-600 italic leading-relaxed mb-6 px-4">
                    "Trong quá trình thực hiện mini project, nhờ có kiến thức và tài liệu của thầy em đã có được nhiều kiến thức hơn về phần thiết kế Web cũng như trang trí sao cho đẹp và bắt mắt hơn."
                </p>
    
                <div class="w-16 h-0.5 bg-gray-300 mx-auto mb-4"></div>

                <h2 class="text-xl md:text-2xl font-bold text-gray-900 uppercase tracking-widest">
                    GIẢNG VIÊN HƯỚNG DẪN
                </h2>
            </div>
            
            <div class="group perspective-1000 w-full max-w-md h-[550px]">
                <div class="card-inner relative w-full h-full preserve-3d shadow-sm hover:shadow-xl transition-shadow duration-300">
                    <div class="absolute inset-0 backface-hidden bg-white border border-gray-200 flex flex-col overflow-hidden rounded-lg">
                        <div class="relative w-full h-3/4 overflow-hidden">
                            <img class="w-full h-full object-cover grayscale-[20%] group-hover:grayscale-0 transition-all duration-500" src="Images/thaythai.jpg" alt="TS. Nguyễn Văn Thái" onerror="this.src='https://via.placeholder.com/450x400?text=TS.+Nguyen+Van+Thai'" />
                        </div>
                        <div class="flex-grow flex flex-col items-center justify-center bg-gray-50 p-4 text-center">
                            <h3 class="text-xl md:text-2xl font-bold text-gray-800 mb-1">TS. NGUYỄN VĂN THÁI</h3>
                            <span class="text-xs font-bold text-gray-900 tracking-widest uppercase">GIẢNG VIÊN HƯỚNG DẪN</span>
                        </div>
                    </div>
                    <div class="absolute inset-0 backface-hidden rotate-y-180 bg-gray-900 text-white p-10 flex flex-col justify-center items-center text-center rounded-lg">
                        <div class="mb-4 border-b border-white/20 pb-2 w-full">
                            <h3 class="text-xl md:text-2xl font-bold mb-1">TS. NGUYỄN VĂN THÁI</h3>
                            <span class="text-xs font-semibold text-gray-400 uppercase">GIẢNG VIÊN HƯỚNG DẪN</span>
                        </div>
                        <p class="text-sm leading-relaxed opacity-90">
                            MR Thái là một giảng viên giỏi, nhiệt tình, rất đam mê bóng đá. Thầy có kiến thức sâu rộng về môn học Scada nói riêng cũng như các môn về điều khiển, Robot và trí tuệ nhân tạo nói chung. Được học và làm việc với thầy là một cơ hội lớn để chúng em có thể có được nhiều kiến thức mới hơn.
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <div class="max-w-4xl mx-auto mb-24 p-6 bg-gray-50 rounded-xl border-l-4 border-gray-900">
            <p class="text-base md:text-lg text-gray-600 leading-relaxed">
                Nhờ sự hướng dẫn tận tình của TS. Nguyễn Văn Thái chúng em đã hiểu rõ hơn về cách thức đưa các dữ liệu từ nhà máy lên SQL và lên WEB theo dõi trực tiếp online để có thể giám sát nhà máy một cách chỉnh chu và hoàn thiện.
            </p>
        </div>

        <section class="mb-24">
            <div class="text-center mb-16">
                <h2 class="text-2xl md:text-3xl font-bold text-gray-900 uppercase tracking-widest">THÀNH VIÊN THỰC HIỆN PROJECT</h2>
                <div class="w-24 h-1 bg-gray-900 mx-auto mt-2"></div>
            </div>
            
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
                <div class="group perspective-1000 h-[450px]">
                    <div class="card-inner relative w-full h-full preserve-3d">
                        <div class="absolute inset-0 backface-hidden bg-white border border-gray-200 flex flex-col shadow-sm rounded-lg overflow-hidden">
                            <div class="h-2/3 overflow-hidden bg-gray-100">
                                <img class="w-full h-full object-cover" src="Images/dao.jpg" alt="Nguyễn Minh Đạo" onerror="this.src='https://via.placeholder.com/300x300?text=Minh+Dao'" />
                            </div>
                            <div class="flex-grow flex flex-col items-center justify-center bg-gray-50 p-4 text-center">
                                <h4 class="text-base md:text-lg font-bold text-gray-800">NGUYỄN MINH ĐẠO</h4>
                                <span class="text-sm font-medium text-gray-900 mb-2">21154048</span>
                                <span class="text-xs font-bold text-gray-500 uppercase tracking-wider">SINH VIÊN</span>
                            </div>
                        </div>
                        <div class="absolute inset-0 backface-hidden rotate-y-180 bg-gray-800 text-white p-6 flex flex-col justify-center text-center rounded-lg">
                            <h4 class="text-lg font-bold text-yellow-400 mb-2">Role: UI Design</h4>
                            <p class="text-sm text-gray-300">Chịu trách nhiệm thiết kế giao diện Web và trải nghiệm người dùng cho hệ thống giám sát nhà máy trực tuyến.</p>
                        </div>
                    </div>
                </div>

                <div class="group perspective-1000 h-[450px]">
                    <div class="card-inner relative w-full h-full preserve-3d">
                        <div class="absolute inset-0 backface-hidden bg-white border border-gray-200 flex flex-col shadow-sm rounded-lg overflow-hidden">
                            <div class="h-2/3 overflow-hidden bg-gray-100">
                                <img class="w-full h-full object-cover" src="Images/nong.jpg" alt="Tô Duy Nông" onerror="this.src='https://via.placeholder.com/300x300?text=Duy+Nong'" />
                            </div>
                            <div class="flex-grow flex flex-col items-center justify-center bg-gray-50 p-4 text-center">
                                <h4 class="text-base md:text-lg font-bold text-gray-800">TÔ DUY NÔNG</h4>
                                <span class="text-sm font-medium text-gray-900 mb-2">21154060</span>
                                <span class="text-xs font-bold text-gray-500 uppercase tracking-wider">SINH VIÊN</span>
                            </div>
                        </div>
                        <div class="absolute inset-0 backface-hidden rotate-y-180 bg-gray-800 text-white p-6 flex flex-col justify-center text-center rounded-lg">
                            <h4 class="text-lg font-bold text-yellow-400 mb-2">Role: Backend Dev</h4>
                            <p class="text-sm text-gray-300">Phụ trách xử lý dữ liệu từ PLC và đồng bộ hóa với hệ thống cơ sở dữ liệu SQL Server của dự án.</p>
                        </div>
                    </div>
                </div>

                <div class="group perspective-1000 h-[450px]">
                    <div class="card-inner relative w-full h-full preserve-3d">
                        <div class="absolute inset-0 backface-hidden bg-white border border-gray-200 flex flex-col shadow-sm rounded-lg overflow-hidden">
                            <div class="h-2/3 overflow-hidden bg-gray-100 flex items-center justify-center">
                                <img class="w-full h-full object-cover" src="Images/hieu.jpg" alt="Cao Đình Hiếu" onerror="this.src='https://via.placeholder.com/300x300?text=Dinh+Hieu'" />
                            </div>
                            <div class="flex-grow flex flex-col items-center justify-center bg-gray-50 p-4 text-center">
                                <h4 class="text-base md:text-lg font-bold text-gray-800">CAO ĐÌNH HIẾU</h4>
                                <span class="text-sm font-medium text-gray-900 mb-2">21154051</span>
                                <span class="text-xs font-bold text-gray-500 uppercase tracking-wider">SINH VIÊN</span>
                            </div>
                        </div>
                        <div class="absolute inset-0 backface-hidden rotate-y-180 bg-gray-800 text-white p-6 flex flex-col justify-center text-center rounded-lg">
                            <h4 class="text-lg font-bold text-yellow-400 mb-2">Role: IoT Specialist</h4>
                            <p class="text-sm text-gray-300">Triển khai hạ tầng IoT và kết nối cảm biến để thu thập dữ liệu vận hành từ nhà máy thực tế.</p>
                        </div>
                    </div>
                </div>

                <div class="group perspective-1000 h-[450px]">
                    <div class="card-inner relative w-full h-full preserve-3d">
                        <div class="absolute inset-0 backface-hidden bg-white border border-gray-200 flex flex-col shadow-sm rounded-lg overflow-hidden">
                            <div class="h-2/3 overflow-hidden bg-gray-100">
                                <img class="w-full h-full object-cover" src="Images/nhan.jpg" alt="Phạm Thiện Nhân" onerror="this.src='https://via.placeholder.com/300x300?text=Thien+Nhan'" />
                            </div>
                            <div class="flex-grow flex flex-col items-center justify-center bg-gray-50 p-4 text-center">
                                <h4 class="text-base md:text-lg font-bold text-gray-800">PHẠM THIỆN NHÂN</h4>
                                <span class="text-sm font-medium text-gray-900 mb-2">21154018</span>
                                <span class="text-xs font-bold text-gray-500 uppercase tracking-wider">SINH VIÊN</span>
                            </div>
                        </div>
                        <div class="absolute inset-0 backface-hidden rotate-y-180 bg-gray-800 text-white p-6 flex flex-col justify-center text-center rounded-lg">
                            <h4 class="text-lg font-bold text-yellow-400 mb-2">Role: Team Lead</h4>
                            <p class="text-sm text-gray-300">Quản lý tiến độ dự án, điều phối công việc giữa các thành viên và chịu trách nhiệm báo cáo cuối kỳ.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</asp:Content>