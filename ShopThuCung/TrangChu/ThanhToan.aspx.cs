using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrangChu_ThanhToan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Label1.Text = Session["Gia"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Gia"] = Label1.Text.ToString();
        Session["Name1"] = txtTenKH.Text.ToString();
        Session["DiaChi1"] = txtDiaChi.Text.ToString();
        Session["DienThoai1"] = txtDT.Text.ToString();
        Session["Email1"] = txtEmail.Text.ToString();
        Session["NguoiNhan"] = TextBox3.Text.ToString();
        Session["HTTT"] = RadioButtonList1.SelectedItem;
        Session["HTVC"] = RadioButtonList2.SelectedItem;

        Response.Redirect("../TrangChu/ThongTinCaNhan.aspx?");
    }
}