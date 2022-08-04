<%@ Page Title="" Language="C#" MasterPageFile="~/MasterThuCung.master" AutoEventWireup="true" CodeFile="ThemSANPHAM.aspx.cs" Inherits="TrangChu_ThemSANPHAM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
         <h1 style="color: red;margin-left:450px">THEM SAN PHAM VAO SHOP</h1>
                 <table style="width:1000px;margin-left:400px; height:500px">
                     
                     <tr>
                         <td style="text-align:left; color:Black" class="auto-style1">Tên Sản Phẩm</td>
                         <td><asp:TextBox ID="Hoten" runat="server" Width="250px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="tên Không được để trống!!!" ForeColor="red" ControlToValidate="Hoten" ValidationGroup="mn">*</asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align:left;color:Black">GIÁ</td>
                         <td><asp:TextBox ID="Taikhoan" runat="server" Width="250px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="giá Không được để trống!!!" ForeColor="red" ControlToValidate="Taikhoan" ValidationGroup="mn">*</asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align:left;color:Black">Chọn Ảnh</td>
                         <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
                     </tr>
                     <tr>
                         <td style="text-align:left;color:Black">Tình Trạng</td>
                         <td><asp:TextBox ID="TinhTrang" runat="server" Width="250px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Tình trạng Không được để trống!!!" ForeColor="red" ControlToValidate="TinhTrang" ValidationGroup="mn">*</asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align:left;color:Black">Chọn Loại Sản Phẩm</td>
                         <td><asp:DropDownList ID="DropDownList2" runat="server">
                             <asp:ListItem>MLC001</asp:ListItem>
                             <asp:ListItem>MLC002</asp:ListItem>
                             <asp:ListItem>MLC003</asp:ListItem>
                             <asp:ListItem>MLC004</asp:ListItem>
                             <asp:ListItem>MLC005</asp:ListItem>
                             <asp:ListItem>MLM001</asp:ListItem>
                             <asp:ListItem>MLM002</asp:ListItem>
                             <asp:ListItem>MLM003</asp:ListItem>
                         </asp:DropDownList></td>
                     </tr>
                    
                     <tr>
                         <td style="color:Black;" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Button ID="Guithongtin" runat="server" Text="Đăng ký" ValidationGroup="mn" Width="200px" Height="50px" Font-Size="Large" OnClick="Guithongtin_Click"/></td>
                         
                     </tr>
                     <tr>
                         <td colspan="2">                                                          
                             <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="mn" ForeColor="red"/>
                         </td>
                        
                     </tr>
                 </table>
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

