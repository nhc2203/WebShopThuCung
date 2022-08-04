<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangNhapTk.aspx.cs" Inherits="TrangChu_DangNhapTk" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://kit.fontawesome.com/60faa90380.js"></script>
    <link rel="stylesheet" type="text/css" href="DangNhap.css" />
</head>
<body style="background: url(https://lh3.googleusercontent.com/83AEJ7ofpNjjmYzjtAZ8mYcRL0BpbPRmECnorZEchDL5kWl9zrncYhbhqzLhfnrAtACfm8jRXFZknkuh1FJgC-fFSRVqiq3wGnv6WEfSYGDo6ZL5K-Lm9TMZEfmwac6v2vBKWp_qjw=w1000);background-size: 100% auto;background-repeat: no-repeat">
    <form id="form1" runat="server" style="margin-left:600px;margin-top:200px; background-color: white;width:370px; " >
    <div>
        <table style="margin-left:40px;">
                <tr>
                    <td colspan="2">
                        <h3 style="color: red; margin-left:45px; font-size: 30px">ĐĂNG NHẬP</h3>
                    </td>
                </tr>
                
                 <tr>
                     <td style="color: black;width: 30px;height:30px" ><i class="fas fa-user"></i></td>
                    <td style="width: 100px;height:50px;border: none">  <asp:TextBox ID="taikhoan" runat="server" Width="216px" Height="30px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Nhập phải khác rỗng" ControlToValidate="taikhoan">*</asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="SAI TAI KHOAN!!!" ForeColor="red" ClientValidationFunction="KiemTra1" ControlToValidate="taikhoan" ></asp:CustomValidator>
                        <script language="javascript">
                            function KiemTra1(source, agrs) {
                                agrs.IsValid = false
                                if (String(agrs.Value) == "admin")
                                    agrs.IsValid = true;
                            }
                    </script>
                    </td>
                </tr>
              
                <tr>
                    <td style="color: black"><i class="fas fa-lock"></i></td>
                    <td style="width: 100px;height:50px"> <asp:TextBox ID="matkhau" runat="server" TextMode="Password" Width="216px" Height="30px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Nhập phải khác rỗng" ControlToValidate="matkhau">*</asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="SAI MAT KHAU!!!" ForeColor="red" ClientValidationFunction="KiemTra2" ControlToValidate="matkhau"></asp:CustomValidator>
                        
                        <script language="javascript">
                            function KiemTra2(source, agrs) {
                                agrs.IsValid = false
                                if (String(agrs.Value) == "123")
                                    agrs.IsValid = true;
                            }
                    </script>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="color:black">
                        <p style="font-size:20px">Bạn chưa có tài khoản?<a href="../TrangChu/DangKy.aspx" style="text-decoration:none">Đăng ký</a></p>
                    </td>
                </tr>
                 <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Button ID="Button11" runat="server" Text="Đăng Nhập" OnClick="Button11_Click" style="width: 250px;height:50px"/>
                    </td>
                </tr>
            </table>&nbsp
    </div>
    </form>
</body>
</html>
