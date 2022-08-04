<%@ Page Title="" Language="C#" MasterPageFile="~/MasterThuCung.master" AutoEventWireup="true" CodeFile="PageLoai_Meo.aspx.cs" Inherits="PageLoai_PageLoai_Meo" %>

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
                    <td style="color:black; padding-left:150px">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENMEO") %>' Font-Size="30px"></asp:Label><br />
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("GIA") %>' Font-Size="30px" Font-Bold="true" ForeColor="red"></asp:Label><br />
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
                    <td style="color:black; padding:0px; "><h2>MÔ TẢ</h2></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td colspan="2" style="color:black;  border:0.5px solid black; font-size:20px;">
                        <ul>
                        <li>Tên: <asp:Label ID="Label3" runat="server" Text='<%# Eval("NICKNAME") %>'></asp:Label></li>
                        <li>Giới tính: <asp:Label ID="Label5" runat="server" Text='<%# Eval("GIOITINH") %>'></asp:Label></li>
                        <li>Tuổi: <asp:Label ID="Label6" runat="server" Text='<%# Eval("TUOI") %>'></asp:Label></li>
                        <li>Màu: <asp:Label ID="Label7" runat="server" Text='<%# Eval("MAU") %>'></asp:Label></li>
                   </ul>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                    Khách hàng hoàn toàn an tâm khi mua Mèo con của thương hiệu chúng tôi vì:
                    <ul>
                        <li>Hợp đồng mua bán rõ ràng.</li>
                        <li>Bảo hành sức khỏe dài hạn.</li>
                        <li>Tiêm phòng, tẩy giun đầy đủ.</li>
                        <li>Tư vấn chăm sóc, nuôi chó mèo cảnh trọn đời.</li>
                        <li>Bác sĩ thú y của Phòng khám thăm khám tận nhà.</li>
                        <li>Chó con có nguồn gốc rõ ràng. Được kiểm tra nghiêm ngặt về sức khỏe mới giao cho khách hàng.</li>
                        <li>Trên hệ thống của chúng tôi luôn có sẵn hàng trăm chú chó Husky con  thuần chủng, đầy đủ màu sắc, để khách hàng lựa chọn.</li>
                    </ul>
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

