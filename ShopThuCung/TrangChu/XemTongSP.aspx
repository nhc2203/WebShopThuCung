<%@ Page Title="" Language="C#" MasterPageFile="~/MasterThuCung.master" AutoEventWireup="true" CodeFile="XemTongSP.aspx.cs" Inherits="TrangChu_XemTongSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:DataList ID="DataList3" runat="server" >
        
        <ItemTemplate>
         
        <table style="width: 100%; float:left;">
                <tr>
                    <td style="width:1000px;height:300px;text-align:center">
                        
                        <h1 style="color: red">TỔNG SỐ LƯỢNG CHÓ: </h1><asp:Label ID="Label3" runat="server" Text='<%# Eval("TONGCHO") %>'></asp:Label>
                        
                    </td>
                </tr>
                <tr>
                    <td style="color: black;width:1000px;text-align:center">
                        
                        <h1 style="color: red"">TỔNG SỐ LƯỢNG MÈO: </h1><asp:Label ID="Label1" runat="server" Text='<%# Eval("TONGMEO") %>' ></asp:Label>
                    </td>
                </tr>
               
            </table>
            </ItemTemplate>
    </asp:DataList>
    <h2>CHÓ</h2>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="6" >
        
        <ItemTemplate>
         
        <table style="width: 100%; float:left;">
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
                        &nbsp;&nbsp;&nbsp;&nbsp;<a href='PageLoai_Cho.aspx?ID=<%#Eval("MACHO")%>'>Chi Tiết</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href='../Giohang/ThongTinGioHang.aspx?ID=<%#Eval("MACHO")%>'>Thêm vào giỏ</a>
                    </td>
                </tr>
            </table>
            </ItemTemplate>
    </asp:DataList>
    <h2>MÈO</h2>
    <asp:DataList ID="DataList2" runat="server" RepeatColumns="6">
        
        <ItemTemplate>
         
        <table style="width: 100%; float:left;">
                <tr>
                    <td style="width:230px;height:300px;text-align:center">
                        
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("HINH") %>' Width="200px" Height="250px"/>
                        
                    </td>
                </tr>
                <tr>
                    <td style="color: black;font-size:20px;text-align:center">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENMEO") %>' ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="color: red;font-size:20px;text-align:center">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("GIA") %>'></asp:Label>đ
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;<a href='PageLoai_Cho.aspx?ID=<%#Eval("MAMEO")%>'>Chi Tiết</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href='../Giohang/ThongTinGioHang.aspx?ID=<%#Eval("MAMEO")%>'>Thêm vào giỏ</a>
                    </td>
                </tr>
            </table>
            </ItemTemplate>
    </asp:DataList>
</asp:Content>

