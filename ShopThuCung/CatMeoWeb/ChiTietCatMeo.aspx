<%@ Page Title="" Language="C#" MasterPageFile="~/MasterThuCung.master" AutoEventWireup="true" CodeFile="ChiTietCatMeo.aspx.cs" Inherits="CatMeoWeb_ChiTietCatMeo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table style="width: 100%;">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("HINH") %>' height="450px"/>
                    </td>
                    <td style="color:white; padding-left:150px">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENPK") %>' Font-Size="30px"></asp:Label><br />
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("GIA") %>' Font-Size="30px" Font-Bold="true" ForeColor="red">đ</asp:Label><br />
                        <h3>Số lượng</h3><br />
                        <input type="button" value="-" class="buttonSL" onclick="minus()"  />
                        <input type="text" value="1" class="sl" id="box"/>
                        <input type="button" value="+" class="buttonSL" onclick="plus()"/><br /><br /><br />
                        <asp:Button ID="Button1" runat="server" Text="MUA NGAY" Font-Bold="true" Width="210px" Height="70px" /><br />
                        <h3>Ưu đãi dành riêng cho khách hàng đặt trước Online:</h3>
                        <ul style="list-style-type: disc; margin-top:-4px; font-size: 20px; margin-left:-20px;">
                            <li>Giữ hàng tại Shop cho khách đặt hàng online</li>
                            <li>Giao hàng toàn quốc</li>
                            <li>Tư vấn miễn phí 24/7</li>
                            <li>Bảo hành nhanh chóng</li>
                        </ul>
                    </td>
                </tr>
                </table>
             <table>
                <tr>
                    <td style="color:white; padding:0px; "><h2>MÔ TẢ</h2></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td colspan="2" style="color:white;  border:0.5px solid white; font-size:20px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    Cát vệ sinh cho mèo siêu vón nổi tiếng nhập khẩu trực tiếp từ nước Nhật Bản. Cát đất vệ sinh siêu vón cho mèo
              </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <script>
        var count = 1;
        var countEl = document.getElementById("box");
        function plus() {
            count++;
            countEl.value = count;
        }
        function minus() {
            if (count > 1) {
                count--;
                countEl.value = count;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

