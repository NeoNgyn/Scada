<%@ Page Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Operation.aspx.cs"
    Inherits="FINAL_G17.Operation" %>

<asp:Content
    ID="Content1"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <style data-purpose="custom-typography">
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap');
        .history-page-wrapper {
            font-family: 'Inter', sans-serif;
        }
    </style>

    <main class="history-page-wrapper max-w-7xl mx-auto bg-white p-4 md:p-10">
        <header class="mb-8" data-purpose="page-header">
            <h1 class="text-3xl md:text-4xl font-bold text-gray-700 mb-2 uppercase text-left">
                Lịch sử đăng nhập
            </h1>
        </header>
        
        <section class="overflow-x-auto" data-purpose="data-display">
            <div class="box-body">
                <asp:GridView ID="GridView1" runat="server" 
                    AutoGenerateColumns="False" 
                    DataKeyNames="ID"
                    OnRowDataBound="GridView1_RowDataBound"
                    GridLines="Both"
                    CellPadding="4"
                    CssClass="w-full text-center border-collapse border border-gray-300 text-sm text-gray-600">
                    
                    <HeaderStyle CssClass="bg-gray-100 text-gray-700 font-semibold border border-gray-300 text-center" />
                    <RowStyle CssClass="border border-gray-300 hover:bg-gray-50 transition-colors text-center" />
                    <AlternatingRowStyle CssClass="bg-gray-50 border border-gray-300 hover:bg-gray-50 transition-colors text-center" />
                    
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" ReadOnly="True">
                            <ItemStyle CssClass="px-6 py-4 font-medium text-gray-900 w-24 border border-gray-300 text-center" />
                            <HeaderStyle CssClass="px-6 py-4 text-xs tracking-wider uppercase text-center" />
                        </asp:BoundField>
                        
                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username">
                            <ItemStyle CssClass="px-6 py-4 border border-gray-300 text-center" />
                            <HeaderStyle CssClass="px-6 py-4 text-xs tracking-wider uppercase text-center" />
                        </asp:BoundField>
                        
                        <asp:BoundField DataField="LoginTime" HeaderText="Login Time" SortExpression="LoginTime">
                            <ItemStyle CssClass="px-6 py-4 border border-gray-300 text-center" />
                            <HeaderStyle CssClass="px-6 py-4 text-xs tracking-wider uppercase text-center" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
            </div>
        </section>

        <div class="m-top20 pagination text-center mt-6"></div>
    </main>
</asp:Content>