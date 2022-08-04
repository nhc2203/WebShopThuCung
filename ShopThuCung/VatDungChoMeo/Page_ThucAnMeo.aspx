<%@ Page Title="" Language="C#" MasterPageFile="~/MasterThuCung.master" AutoEventWireup="true" CodeFile="Page_ThucAnMeo.aspx.cs" Inherits="VatDungChoMeo_Page_ThucAnMeo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="float:left ;width:20% ;padding:0 10px 0 25px " >
        <div style="padding-bottom: 20px; float: left;">
                <div>
                    <h2 style="color: red; text-align:center; border-bottom: 1px solid red">Sản Phẩm Hot
                    </h2>
                </div>
                 <div>
                    <div style="padding: 15px 0px; float: left; width: 100%; margin-bottom: 5px">
                        <div style="float: left; width: 70px; margin: 0; padding: 0">
                            <img src="../Dulieu/chocorgi.jpg"  style=" width: 70px "/>
                        </div>
                        <div style="padding: 0 0px 0 10px; margin: 0; float: left;">
                            <h3 style="margin: 0px; margin-bottom: 5px;"><a href="#" title="Corgi thuần chủng" style="font-size: 15px;">Corgi thuần chủng</a></h3>
                            <div>
                                <span>
                                    <span>2.500.000₫</span>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <div style="padding: 15px 0px; float: left; width: 100%; margin-bottom: 5px">
                        <div style="float: left; width: 70px; margin: 0; padding: 0">
                            <img src="../Dulieu/chochihuahua.jpg"  style=" width: 70px "/>
                        </div>
                        <div style="padding: 0 0px 0 10px; margin: 0; float: left;">
                            <h3 style="margin: 0px; margin-bottom: 5px;"><a href="#" style="font-size: 15px;">Chihuahua Thuần Chủng</a></h3>
                            <div>
                                <span>
                                    <span>5.500.000₫</span>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <div style="padding: 15px 0px; float: left; width: 100%; margin-bottom: 5px">
                        <div style="float: left; width: 70px; margin: 0; padding: 0">
                            <img src="../Dulieu/choalaska.jpg"  style=" width: 70px "/>
                        </div>
                        <div style="padding: 0 0px 0 10px; margin: 0; float: left;">
                            <h3 style="margin: 0px; margin-bottom: 5px;"><a href="#" style="font-size: 15px;">Alaska</a></h3>
                            <div>
                                <span>
                                    <span>9.000.000₫</span>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
        <ItemTemplate>
        <table style="width: 100%;">
                <tr>
                    <td style="width:230px;height:300px;text-align:center">
                        
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("HINH") %>' Width="200px" Height="250px"/>
                        
                    </td>
                </tr>
                <tr>
                    <td style="color: #fff;font-size:20px;text-align:center">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENPK") %>' ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="color: red;font-size:20px;text-align:center">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("GIA") %>'></asp:Label>đ
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;<a href='../ThucAnMeoWeb/ChiTietThucAnMeo.aspx?ID=<%#Eval("MAPK")%>'>Chi Tiết</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href='../Giohang/ThongTinGioHang3.aspx?ID=<%#Eval("MAPK")%>'>Thêm vào giỏ</a>
                    </td>
                </tr>
            </table>
            </ItemTemplate>
    </asp:DataList>
</asp:Content>

