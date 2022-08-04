<%@ Page Title="" Language="C#" MasterPageFile="~/MasterThuCung.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>
<%@ MasterType VirtualPath="~/MasterThuCung.master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="5">
        <ItemTemplate>
        <table style="width: 100%;">
                <tr>
                    <td style="width:230px;height:300px;text-align:center">
                        
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("HINH") %>' Width="200px" Height="250px"/>
                        
                    </td>
                </tr>
                <tr>
                    <td style="color: black;font-size:20px;text-align:center">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENCHO") %>' ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="color: red;font-size:20px;text-align:center">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("GIA") %>'></asp:Label>đ
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;<a href='PageLoai_Cho.aspx?ID=<%#Eval("MACHO")%>'>Chi Tiết</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href='../Giohang/ThongTinGioHang.aspx?ID=<%#Eval("MACHO")%>'>Thêm vào giỏ</a>
                    </td>
                </tr>
            </table>
            </ItemTemplate>
    </asp:DataList>
</asp:Content>

