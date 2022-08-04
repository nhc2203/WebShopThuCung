<%@ Page Title="" Language="C#" MasterPageFile="~/MasterThuCung.master" AutoEventWireup="true" CodeFile="ThongTinCaNhan.aspx.cs" Inherits="TrangChu_ThongTinCaNhan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        /* CONTAIN*/
      .contain
{
    
    width:auto;
    padding-top:15px;
  
    background-color: #F7F5F5;
    border-left:0px dashed #212020;
    min-height:400px;
    }
.title-chu{
     font-family: "Roboto",sans-serif;
        font-size: 19px;
    font-weight: 400;
    color: #212B25;
    margin-bottom: 7px;
    text-transform: uppercase;
    margin-top:0px;
    letter-spacing: .01em;
}
  p {
            font-weight: 700;
            font-size: 14px;
            font-family: "Roboto",sans-serif;
            line-height: 16px;
            margin-bottom: 28px;
            color: #212B25;
            position: relative;
        }
        ul .title-a{
            font-weight: 300;
            font-size: 14px;
            font-family: "Roboto",sans-serif;
            color: #212B25;
            margin-bottom: 22px;
            display: block;
            text-decoration:none;
        }
        
 .l1{
       font-weight:100;
   }
   .btn.btn-primary:hover, input.btn-primary[type="submit"]:hover {
    background: #fff;
    color: #f26522;
    border: 1px solid #f26522;
}
   
      #h2  a:hover {
            color: #f26522;
            text-decoration: none;
            cursor: pointer;
        }
      .btn {
          border: 1px solid transparent;
          background: #f26522; color: #fff;
      }
      a:hover{
          color: #f26522;
      }
      ul .active{
         color: #f26522;
      }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

             <div class="MenuTrai" style="width:22%; float:left ;padding-left:22px" >
         <div style="">
             <h2 class="title-chu ">  Trang tài khoản  
             </h2>
             <p>Xin Chào , !</p>
             <ul class="navigation" style="padding:0px; list-style:none">
                 <li >
                   <a class="title-a active" href="ThongTinCaNhan.aspx">Thông Tin tài Khoản</a>
                 </li>
                 <li >
                   <a class="title-a" href="LichSuMuaHang.aspx">Đơn Hàng Của Bạn</a>
                 </li>
                 <li >
                   <a class="title-a" href="DoiMatKhau.aspx"> Đổi Mật Khẩu</a>
                 </li>
             </ul>
             
             </div>
         </div>
             <div style=" float:left;width:74%">
            <div>
                  <h2 class="title-chu">  Thông Tin Tài Khoản   </h2>
                <div style="padding-left:15px">
                    <p style="margin: 0 0 16px 0;line-height: 1.7; top: 0px; left: 0px;">
                        <asp:Label ID="Label1" runat="server" Text="Họ Tên:"></asp:Label>
                        <asp:Label ID="lblName" runat="server" CssClass="l1"></asp:Label>
                    </p>
                    <p style="margin: 0 0 16px 0;line-height: 1.7;">
                        <asp:Label ID="Label3" runat="server" Text="Địa Chỉ:"></asp:Label>
                        <asp:Label ID="lblDiaChi" runat="server"  CssClass="l1"></asp:Label>
                    </p>
                     <p style="margin: 0 0 16px 0;line-height: 1.7;">
                        <asp:Label ID="Label5" runat="server" Text="Số Điện Thoại:"></asp:Label>
                        <asp:Label ID="lblDienThoai" runat="server"  CssClass="l1"></asp:Label>
                    </p>
                     <p style="margin: 0 0 16px 0;line-height: 1.7;">
                        <asp:Label ID="Label7" runat="server" Text="Email:"></asp:Label>
                        <asp:Label ID="lblEmail" runat="server"  CssClass="l1"></asp:Label>
                    </p>
                     <p style="margin: 0 0 16px 0;line-height: 1.7;">
                        <asp:Label ID="Label2" runat="server" Text="Tên người Nhận:"></asp:Label>
                        <asp:Label ID="lblNguoiNhan" runat="server"  CssClass="l1"></asp:Label>
                    </p>
                     <p style="margin: 0 0 16px 0;line-height: 1.7;">
                        <asp:Label ID="Label4" runat="server" Text="Hình Thức Thanh Toán:"></asp:Label>
                        <asp:Label ID="lblHTThanhToan" runat="server"  CssClass="l1"></asp:Label>
                    </p>
                     <p style="margin: 0 0 16px 0;line-height: 1.7;">
                        <asp:Label ID="Label6" runat="server" Text="Hình Thức Vận Chuyển:"></asp:Label>
                        <asp:Label ID="lblHTVanChuyen" runat="server"  CssClass="l1"></asp:Label>
                    </p>
                     <p style="margin: 0 0 16px 0;line-height: 1.7;">
                        <asp:Label ID="Label8" runat="server" Text="ThanhTOan:"></asp:Label>
                        <asp:Label ID="lblThanhToan" runat="server"  CssClass="l1"></asp:Label>
                    </p>
                   

                </div>
            </div>
        </div>
 
</asp:Content>

