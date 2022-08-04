<%@ Page Title="" Language="C#" MasterPageFile="~/MasterThuCung.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="TrangChu_DangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 150px;
            height: 34px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
         <h1 style="color: red;margin-left:500px">ĐĂNG KÝ TÀI KHOẢN</h1>
                 <table style="width:1000px;margin-left:450px; height:500px">
                     
                     <tr>
                         <td style="text-align:left; color:black" class="auto-style1">Họ và tên</td>
                         <td><asp:TextBox ID="Hoten" runat="server" Width="250px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Họ tên Không được để trống!!!" ForeColor="red" ControlToValidate="Hoten" ValidationGroup="mn">*</asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align:left;color:black">Tài khoản</td>
                         <td><asp:TextBox ID="Taikhoan" runat="server" Width="250px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Tài khoản Không được để trống!!!" ForeColor="red" ControlToValidate="Taikhoan" ValidationGroup="mn">*</asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align:left;color:black">Password</td>
                         <td><asp:TextBox ID="Matkhau" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mật khẩu không được để trống!!!" ForeColor="red" ControlToValidate="Matkhau" ValidationGroup="mn">*</asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align:left;color:black">Xác Nhận Password</td>
                         <td><asp:TextBox ID="XacNhan" runat="server" TextMode="Password" Width="250px">
                             </asp:TextBox>
                             <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mật khẩu nhập lại không khớp!!!" ControlToValidate="XacNhan" Operator="Equal" ControlToCompare="Matkhau" ForeColor="red" Text="*" ValidationGroup="mn"></asp:CompareValidator>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align:left;color:black">Email</td>
                         <td><asp:TextBox ID="Email" runat="server" Width="250px">
                             </asp:TextBox>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  ValidationExpression="^[a-zA-Z0-9]+@gmail\.com$" ErrorMessage="Tài khoản phải theo định dạng @Gmail.com !!!" ForeColor="red" ControlToValidate="Email" ValidationGroup="mn">*</asp:RegularExpressionValidator>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align:left;color:black">Giới tính</td>
                         <td style="color:black">
                             <asp:RadioButtonList ID="RadioButtonList1" runat="server"  RepeatDirection="Horizontal" >
                                 <asp:ListItem>Nam</asp:ListItem>
                                 <asp:ListItem>Nữ</asp:ListItem>
                             </asp:RadioButtonList>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align:left;color:black">Bạn ở đâu</td>
                         <td style="color:black">
                             <asp:DropDownList ID="DropDownList1" runat="server" >
                                 <asp:ListItem>Quảng Ngãi</asp:ListItem>
                                 <asp:ListItem>Hà Nội</asp:ListItem>
                                 <asp:ListItem>TP.HCM</asp:ListItem>
                                 <asp:ListItem>Đà Lạt</asp:ListItem>
                             </asp:DropDownList>
                         </td>       
                     </tr>
                     <tr>
                         <td style="color:black;" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Button ID="Guithongtin" runat="server" Text="Đăng ký" ValidationGroup="mn" Width="200px" Height="50px" Font-Size="Large" OnClick="Guithongtin_Click" /></td>
                         
                     </tr>
                     <tr>
                         <td colspan="2">                                                          
                             <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="mn" ForeColor="red"/>
                         </td>
                        
                     </tr>
                 </table>
            </div>
</asp:Content>

