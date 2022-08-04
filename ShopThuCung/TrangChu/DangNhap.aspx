<%@ Page Title="" Language="C#" MasterPageFile="~/MasterThuCung.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="TrangChu_DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h2 style="text-align:right; margin-top: -95px; margin-right: 200px; color: black ">Xin Chao <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h2>
    <div style="margin-top: -95px; margin-right: 200px"><img src="../DuLieu/pepe-gets-excited.gif" height="10" width="10"/></div>
    
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <!DOCTYPE html>
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
        <table>
            <tr>
                <td style="width:250px;height:300px;text-align:center">
                    <div class="new"><img src="../DuLieu/choalaska.jpg"/></div>
                    <p style="color: black;font-size:20px">Chó Alaska</p>
                    <p style="color: red;font-size:20px;text-align:center">3.999.999 đ</p>
                    <button class="button" runat="server" type="button">CHI TIẾT</button>
                </td>
                <td style="width:250px;height:300px;text-align:center">
                    <div class="new"><img src="../DuLieu/meoaln.jpg"/></div>
                    <p style="color: black;font-size:20px">Mèo Anh Lông Ngắn</p>
                    <p style="color: red;font-size:20px;text-align:center">3.999.999 đ</p>
                    <asp:Button ID="Button6" runat="server" Text="Chi tiết" />
                </td>
                <td style="width:250px;height:300px;text-align:center">
                    <div class="new"><img src="../DuLieu/chochihuahua.jpg"/></div>
                    <p style="color: black;font-size:20px">Chó Chi Hua Hua</p>
                    <p style="color: red;font-size:20px;text-align:center">3.999.999 đ</p>
                    <asp:Button ID="Button7" runat="server" Text="Chi tiết" />
                </td>
                <td style="width:250px;height:300px;text-align:center">
                    <div class="new"><img src="../DuLieu/meobatu.jpg"/></div>
                    <p style="color: black;font-size:20px">Mèo Ba Tư</p>
                    <p style="color: red;font-size:20px;text-align:center">3.999.999 đ</p>
                    <asp:Button ID="Button8" runat="server" Text="Chi tiết" />
                </td>
                <td style="width:250px;height:300px;text-align:center">
                    <div class="new"><img src="../DuLieu/meoxiem.jpg"/></div>
                    <p style="color: black;font-size:20px">Mèo Xiêm</p>
                    <p style="color: red;font-size:20px;text-align:center">3.999.999 đ</p>
                    <asp:Button ID="Button9" runat="server" Text="Chi tiết" />
                </td>
            </tr>
        </table>
    </div>

    <div class="product">
        <h1 style="color: brown;margin-top:200px; text-align:center">SẢN PHẨM BÁN CHẠY</h1>
        <table>
            <tr>
                <td style="width:250px;height:300px;text-align:center">
                    <div class="new"><img src="../DuLieu/choshiba.jpg"/></div>
                    <p style="color: black;font-size:20px">Chó ShiBa</p>
                    <p style="color: red;font-size:20px;text-align:center">3.999.999 đ</p>
                    <asp:Button ID="Button10" runat="server" Text="Chi tiết" />
                </td>
                <td style="width:250px;height:300px;text-align:center">
                    <div class="new"><img src="../DuLieu/meoaln.jpg"/></div>
                    <p style="color: black;font-size:20px">Mèo Anh Lông Ngắn</p>
                    <p style="color: red;font-size:20px;text-align:center">3.999.999 đ</p>
                    <asp:Button ID="Button11" runat="server" Text="Chi tiết" />
                </td>
                <td style="width:250px;height:300px;text-align:center">
                    <div class="new"><img src="../DuLieu/chocorgi.jpg"/></div>
                    <p style="color: black;font-size:20px">Chó Corgi</p>
                    <p style="color: red;font-size:20px;text-align:center">3.999.999 đ</p>
                    <asp:Button ID="Button12" runat="server" Text="Chi tiết" />
                </td>
                <td style="width:240px;height:300px;text-align:center">
                    <div class="new"><img src="../DuLieu/meobangal.jpg"/></div>
                    <p style="color: black;font-size:20px">Mèo Bangal</p>
                    <p style="color: red;font-size:20px;text-align:center">3.999.999 đ</p>
                    <asp:Button ID="Button13" runat="server" Text="Chi tiết" />
                </td>
                <td style="width:250px;height:300px;text-align:center">
                    <div class="new"><img src="../DuLieu/meobatu.jpg"/></div>
                    <p style="color: black;font-size:20px">Mèo Ba Tư</p>
                    <p style="color: red;font-size:20px;text-align:center">3.999.999 đ</p>
                    <asp:Button ID="Button14" runat="server" Text="Chi tiết" />
                </td>
            </tr>
        </table>
        <table>
        <tr>
            <td style="color: black;font-size:30px"><i class="fas fa-wrench"></i></td>
            <td><a href="ThemSANPHAM.aspx?"><h2 style="color: black">CẬP NHẬP SẢN PHẨM</h2></a></td>
        </tr>
        <tr>
            <td style="color: black;font-size:30px"><i class="fas fa-file-invoice-dollar"></i></td>
            <td><a href="XemTongSP.aspx?"> <h2 style="color: black">XEM TỔNG SẢN PHẨM</h2></a></td>
        </tr>
    </table>
    </div>
    <div >

    </div>
    </body>
     </html>
</asp:Content>


