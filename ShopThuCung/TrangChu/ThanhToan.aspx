<%@ Page Title="" Language="C#" MasterPageFile="~/MasterThuCung.master" AutoEventWireup="true" CodeFile="ThanhToan.aspx.cs" Inherits="TrangChu_ThanhToan" %>

<asp:Content ID="Content4" ContentPlaceHolderID="head" Runat="Server">
<style>
.contain {
            width: auto;
            padding-top: 15px;
            padding-left: 5px;
            background-color: #F7F5F5;
            border-left: 0px dashed #212020;
            min-height: 400px;
        }
.Container .noidung {
                padding-left: 0px;
            }
.title-chu {
            margin-top: 0;
            letter-spacing: .01em;
            font-weight: 600;
            color: #f26522;      
            display: inline-block;
            font-size: 17px;         
            line-height: 22px;
            text-transform: uppercase;
          
        }
td{
     font-size: 14px;  
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="thanhtoan" style="text-align:center">
    <div style="padding-bottom:10px;">
        <div class="title-chu" > <h3 style="margin:0px">THÔNG TIN ĐƠN ĐẶT HÀNG</h3></div>
    </div>
    <div style="">
          <table width="600px" align="center" style="background-color:white" border="0">
        <tr>
            <th colspan="2" style="background-color:#f26522;color:white;height:30px;">THÔNG TIN CÁ NHÂN</th>
        </tr>
        <tr>
            <td>Họ Tên KH:</td>
            <td style="float:left">
                <asp:TextBox ID="txtTenKH" runat="server" Width="215px" Height="28px" ></asp:TextBox></td>
        </tr>
              <tr>
            <td>Địa Chỉ</td>
            <td style="float:left">
                <asp:TextBox ID="txtDiaChi" runat="server" Width="215px" Height="28px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Điện Thoại:</td>
            <td style="float:left">
                <asp:TextBox ID="txtDT" runat="server" Width="215px" Height="28px"></asp:TextBox></td>
        </tr>
               <tr>
            <td>Email:</td>
            <td style="float:left">
                <asp:TextBox ID="txtEmail" runat="server" Width="215px" Height="28px"></asp:TextBox></td>
        </tr>
       
     
                <tr>
            <td>Người Nhận:</td>
            <td style="float:left">
                <asp:TextBox ID="TextBox3" runat="server" Width="215px"  Height="28px"></asp:TextBox></td>
        </tr>
              
                <tr>
            <td>Hình Thức Thanh Toán:</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" >
                    <asp:ListItem>Thanh Toán Trước Khi Giao Hàng</asp:ListItem>
                    <asp:ListItem>Thanh Toán  Sau Khi Giao  Hàng</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
               <tr>
            <td>Hình Thức Giao Hàng:</td>
            <td >
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Giao Trực Tiếp</asp:ListItem>
                    <asp:ListItem>Chuyển Giao</asp:ListItem>

                </asp:RadioButtonList>
            </td>

        </tr>
               
               <tr>
            <td>Tiền thanh toán:</td>
            <td style="float:left">
                <asp:Label ID="Label1" runat="server" ></asp:Label>
                </td>
        </tr>
              <tr>
                  <td colspan="2">
                       <asp:Button ID="Button1" runat="server"  Text  ="Đồng Ý" Height="43px" Width="220px" BackColor="#F26522" BorderStyle="None" Font-Bold="True" ForeColor="White" OnClick="Button1_Click" />
                  </td>
              </tr>
       
      
    </table>
    </div>
</div>
</asp:Content>




