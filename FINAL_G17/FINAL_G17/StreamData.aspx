<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StreamData.aspx.cs" Inherits="FINAL_G17.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="max-w-7xl mx-auto px-6 py-10">

    <div class="mb-8">
        <h1 class="text-3xl font-bold text-gray-800">
            Stream Data
        </h1>

        <p class="text-gray-500 mt-2">
            Giá trị cảm biến mới nhất
        </p>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">

        <asp:Repeater ID="rptSensors" runat="server">
            <ItemTemplate>

                <div class="bg-white border border-gray-200 rounded-xl shadow-sm hover:shadow-md transition">

                    <!-- Header -->
                    <div class="flex items-center justify-between px-5 py-4 border-b">

                        <div>
                            <h3 class="font-semibold text-lg text-gray-800">
                                <%# Eval("NAME") %>
                            </h3>

                            <p class="text-sm text-gray-400">
                                Latest Data
                            </p>
                        </div>

                        <i class="fa-solid fa-microchip text-blue-500 text-xl"></i>

                    </div>

                    <!-- Table -->
                    <table class="w-full text-sm">

                        <tbody>

                            <tr class="border-b">
                                <td class="px-5 py-3 font-medium text-gray-500">
                                    ID
                                </td>

                                <td class="px-5 py-3 text-right text-gray-800">
                                    <%# Eval("ID") %>
                                </td>
                            </tr>

                            <tr class="border-b">
                                <td class="px-5 py-3 font-medium text-gray-500">
                                    Value
                                </td>

                                <td class="px-5 py-3 text-right font-semibold text-blue-600">
                                    <%# Eval("VALUE") %>
                                </td>
                            </tr>

                            <tr>
                                <td class="px-5 py-3 font-medium text-gray-500">
                                    Time
                                </td>

                                <td class="px-5 py-3 text-right text-gray-700">
                                    <%# Eval("TIME", "{0:dd/MM/yyyy HH:mm:ss}") %>
                                </td>
                            </tr>

                        </tbody>

                    </table>

                </div>

            </ItemTemplate>
        </asp:Repeater>

    </div>

</div>

</asp:Content>