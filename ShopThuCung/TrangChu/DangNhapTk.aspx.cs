using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrangChu_DangNhapTk : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Session["khachhang"] = taikhoan.Text.ToString();

        Response.Redirect("../TrangChu/DangNhap.aspx?");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        Response.Redirect("../TrangChu/DangKy.aspx?");
    }
}