<%@ Page Title="" Language="C#" MasterPageFile="~/MasterThuCung.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script src="https://kit.fontawesome.com/60faa90380.js"></script>
    <link rel="stylesheet" type="text/css" href="StyleForPetcss.css" />
</head>
<body>
        <div class="slideshow">
                <div class="slider">
                    <input type="radio" name="buttom" id="buttom_1" checked="checked" />
                    <input type="radio" name="buttom" id="buttom_2"  />
                    <input type="radio" name="buttom" id="buttom_3"  />
                    <input type="radio" name="buttom" id="buttom_4"  />
                    <div class="slide s1" ><img src="../DuLieu/hin1.jpg"/></div>
                    <div class="slide" ><img src="../DuLieu/hin2.jpg"/></div>
                    <div class="slide" ><img src="../DuLieu/hin3.jpg"/></div>
                    <div class="slide" ><img src="../DuLieu/hin4.jpg"/></div>
                </div>
                <div class="action">
                    <label for="buttom_1" class="bar"></label>
                    <label for="buttom_2" class="bar"></label>
                    <label for="buttom_3" class="bar"></label>
                    <label for="buttom_4" class="bar"></label>
                </div>
            </div>
    <div class="newpet">
        <h1 style="color: brown;margin-top:400px; text-align:center">THÚ CƯNG MỚI</h1>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" >
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
                        &nbsp;&nbsp;&nbsp;&nbsp;<a href='../PageLoai/PageLoai_Cho.aspx?ID=<%#Eval("MACHO")%>'>Chi Tiết</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href='../Giohang/ThongTinGioHang.aspx?ID=<%#Eval("MACHO")%>'>Thêm vào giỏ</a>
                    </td>
                </tr>
            </table>
            </ItemTemplate>
    </asp:DataList>
    </div>

    <div class="newpet">
        <h1 style="color: brown;margin-top:200px; text-align:center">SẢN PHẨM BÁN CHẠY</h1>
        <table>
            <tr>
                <td style="width:250px;height:300px;text-align:center">
                    <div class="new"><img src="../DuLieu/choshiba.jpg"/></div>
                    <p style="color: black;font-size:20px">Chó ShiBa</p>
                    <p style="color: red;font-size:20px;text-align:center">3.999.999 đ</p>
                    <asp:Button ID="Button6" runat="server" Text="Chi tiết" />
                </td>
                <td style="width:250px;height:300px;text-align:center">
                    <div class="new"><img src="../DuLieu/meoaln.jpg"/></div>
                    <p style="color: black;font-size:20px">Mèo Anh Lông Ngắn</p>
                    <p style="color: red;font-size:20px;text-align:center">3.999.999 đ</p>
                    <asp:Button ID="Button7" runat="server" Text="Chi tiết" />
                </td>
                <td style="width:250px;height:300px;text-align:center">
                    <div class="new"><img src="../DuLieu/chocorgi.jpg"/></div>
                    <p style="color: black;font-size:20px">Chó Corgi</p>
                    <p style="color: red;font-size:20px;text-align:center">3.999.999 đ</p>
                    <asp:Button ID="Button8" runat="server" Text="Chi tiết" />
                </td>
                <td style="width:240px;height:300px;text-align:center">
                    <div class="new"><img src="../DuLieu/meobangal.jpg"/></div>
                    <p style="color: black;font-size:20px">Mèo Bangal</p>
                    <p style="color: red;font-size:20px;text-align:center">3.999.999 đ</p>
                    <asp:Button ID="Button9" runat="server" Text="Chi tiết" />
                </td>
                <td style="width:250px;height:300px;text-align:center">
                    <div class="new"><img src="../DuLieu/meobatu.jpg"/></div>
                    <p style="color: black;font-size:20px">Mèo Ba Tư</p>
                    <p style="color: red;font-size:20px;text-align:center">3.999.999 đ</p>
                    <asp:Button ID="Button10" runat="server" Text="Chi tiết" />
                </td>
            </tr>
        </table>
    </div>
    </body>
     </html>
</asp:Content>

