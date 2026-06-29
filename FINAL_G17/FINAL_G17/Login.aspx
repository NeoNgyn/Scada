<%@ Page Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Login.aspx.cs"
    Inherits="FINAL_G17.WebForm1" %>
<asp:Content
    ID="Content1"
    ContentPlaceHolderID="MainContent"
    runat="server">
    <main class="flex-grow flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8 bg-white">
        <div class="max-w-md w-full space-y-8 bg-white p-10 border border-custom-border shadow-sm rounded-sm">
            <div>
                <h2 class="text-left text-3xl font-semibold text-gray-700 pb-6 border-b border-gray-100">
                    Đăng nhập / Đăng ký
                </h2>
            </div>

            <%-- Error Notification --%>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Visible="false" />

            <div class="mt-8 space-y-6">
                <div class="space-y-4">
                    <!-- Username Input -->
                    <div class="flex items-center">
                        <div class="flex-shrink-0 mr-3 text-gray-500 w-6 flex justify-center">
                            <i class="fa-regular fa-user text-xl"></i>
                        </div>
                        <div class="w-full">
                            <asp:TextBox ID="txtUsername" runat="server"
                                CssClass="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-400 text-gray-900 focus:outline-none sm:text-sm"
                                placeholder="Tài khoản" />
                        </div>
                    </div>
                    <!-- Password Input -->
                    <div class="flex items-center">
                        <div class="flex-shrink-0 mr-3 text-gray-500 w-6 flex justify-center">
                            <i class="fa-solid fa-key text-xl"></i>
                        </div>
                        <div class="w-full">
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"
                                CssClass="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-400 text-gray-900 focus:outline-none sm:text-sm"
                                placeholder="Mật khẩu" />
                        </div>
                    </div>
                </div>

                <!-- Action Buttons -->
                <div class="flex justify-end space-x-4 pt-4">
                    <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập"
                        OnClick="btnLogin_Click"
                        CssClass="group relative flex justify-center py-2 px-6 border border-transparent text-sm font-medium rounded-sm text-white bg-custom-green hover:bg-opacity-90 transition-colors" />
                    <asp:Button ID="btnRegister" runat="server" Text="Đăng ký"
                        OnClick="btnRegister_Click"
                        CssClass="group relative flex justify-center py-2 px-6 border border-transparent text-sm font-medium rounded-sm text-white bg-custom-green hover:bg-opacity-90 transition-colors" />
                </div>
            </div>
        </div>
    </main>
</asp:Content>