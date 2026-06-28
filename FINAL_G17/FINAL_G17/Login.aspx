<%@ Page Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Login.aspx.cs"
    Inherits="FINAL_G17.WebForm1" %>

<asp:Content
    ID="Content1"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <!-- BEGIN: Main Content Area -->
    <main class="flex-grow flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8 bg-white">
        <div class="max-w-md w-full space-y-8 bg-white p-10 border border-custom-border shadow-sm rounded-sm">
            <!-- Login Form Header -->
            <div>
                <h2 class="text-left text-3xl font-semibold text-gray-700 pb-6 border-b border-gray-100">Đăng nhập / Đăng ký
                </h2>
            </div>
            <!-- Login Form -->
            <form action="#" class="mt-8 space-y-6" method="POST">
                <div class="space-y-4">
                    <!-- Username Input -->
                    <div class="flex items-center">
                        <div class="flex-shrink-0 mr-3 text-gray-500 w-6 flex justify-center">
                            <i class="fa-regular fa-user text-xl"></i>
                        </div>
                        <div class="w-full">
                            <label class="sr-only" for="username">Tài khoản</label>
                            <input class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-400 text-gray-900 focus:outline-none focus:ring-custom-green focus:border-custom-green focus:z-10 sm:text-sm" id="username" name="username" placeholder="Tài khoản" required="" type="text" />
                        </div>
                    </div>
                    <!-- Password Input -->
                    <div class="flex items-center">
                        <div class="flex-shrink-0 mr-3 text-gray-500 w-6 flex justify-center">
                            <i class="fa-solid fa-key text-xl"></i>
                        </div>
                        <div class="w-full">
                            <label class="sr-only" for="password">Mật khẩu</label>
                            <input class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-400 text-gray-900 focus:outline-none focus:ring-custom-green focus:border-custom-green focus:z-10 sm:text-sm" id="password" name="password" placeholder="Mật khẩu" required="" type="password" />
                        </div>
                    </div>
                </div>
                <!-- Action Buttons -->
                <div class="flex justify-end space-x-4 pt-4">
                    <button class="group relative flex justify-center py-2 px-6 border border-transparent text-sm font-medium rounded-sm text-white bg-custom-green hover:bg-opacity-90 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-custom-green transition-colors" type="submit">
                        Đăng nhập
                    </button>
                    <button class="group relative flex justify-center py-2 px-6 border border-transparent text-sm font-medium rounded-sm text-white bg-custom-green hover:bg-opacity-90 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-custom-green transition-colors" type="button">
                        Đăng ký
                    </button>
                </div>
            </form>
        </div>
    </main>
    <!-- END: Main Content Area -->

</asp:Content>
