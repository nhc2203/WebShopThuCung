<%@ Page Title="" Language="C#" MasterPageFile="~/MasterThuCung.master" AutoEventWireup="true" CodeFile="ThongTinGioHang.aspx.cs" Inherits="Giohang_ThongTinGioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h2 style="text-align: center; color:Black">Giỏ Hàng</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="Black" Width="100%" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" >
            <Columns>
                <asp:BoundField DataField="MACHO" HeaderText="Mã Sản Phẩm">
                <ControlStyle ForeColor="Black"></ControlStyle>
                <HeaderStyle ForeColor="Black" />
                <ItemStyle ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="TENCHO" HeaderText="Tên Sản Phẩm" >
                    <ControlStyle ForeColor="Black"></ControlStyle>
                <HeaderStyle ForeColor="Black" />
                <ItemStyle ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="HINH" HeaderText="Hình" ControlStyle-Width="200px" HeaderStyle-ForeColor="Black">
<ControlStyle Width="200px"></ControlStyle>

<HeaderStyle ForeColor="Black"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ImageField>
                <asp:TemplateField HeaderText="Số Lượng" HeaderStyle-ForeColor="Black">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="txtQuantity" runat="server" Text= '<%# Eval("SOLUONG") %>'></asp:TextBox>
                    </ItemTemplate>

<HeaderStyle ForeColor="Black"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:BoundField DataField="GIA" HeaderText="Đơn giá">
                <ControlStyle ForeColor="Black"></ControlStyle>
                <HeaderStyle ForeColor="Black" />
                <ItemStyle ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Chức năng">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="select" >Update</asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CommandName="delete">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>
        <font color="blue" size="4">Tổng thành tiền: </font>
        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red"></asp:Label><br />
        <asp:Button ID="Button1" runat="server" Text="Thanh Toán" OnClick="Button1_Click" />
        <button type="button" onclick="quay_lai_trang_truoc()">Mua Tiếp</button>
        <script>
            function quay_lai_trang_truoc() {
                history.back();
            }
          </script>
    </div>
</asp:Content>

