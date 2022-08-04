using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrangChu_ThongTinCaNhan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
            lblName.Text = Session["Name1"].ToString();
            lblDiaChi.Text = Session["DiaChi1"].ToString();
            lblDienThoai.Text = Session["DienThoai1"].ToString();
            lblEmail.Text = Session["Email1"].ToString();
            lblNguoiNhan.Text = Session["NguoiNhan"].ToString();
            lblHTVanChuyen.Text = Session["HTVC"].ToString();
            lblHTThanhToan.Text = Session["HTTT"].ToString();
            lblThanhToan.Text = Session["Gia"].ToString();

        
    }
}