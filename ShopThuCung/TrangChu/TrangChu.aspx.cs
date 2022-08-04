using App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrangChu : System.Web.UI.Page
{
    SqlConnection cn1 = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        cn1.Open();

        String strcmd = "select top(5) * from CHO where MALOAICHO = 'MLC001'";
        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn1);
        DataSet ds = new DataSet();
        da.Fill(ds, "CHO");

        DataList1.DataSource = ds.Tables["CHO"];
        DataList1.DataBind();

        //Tạo biến
        GioHang cart = new GioHang();
        cart.CreateItem();
        Session["Cart"] = cart;
    }

    //protected void Button11_Click(object sender, EventArgs e)
    //{
    //    Session["khachhang"] = taikhoan.Text.ToString();
       
    //    Response.Redirect("../TrangChu/DangNhap.aspx?");
    //}
    //protected void Button12_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("../TrangChu/DangKy.aspx?");
    //}
}