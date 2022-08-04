using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;
public partial class Giohang_ThongTinGioHang2 : System.Web.UI.Page
{
    SqlConnection cn1 = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());

            String cmd = "select * from MEO where MAMEO= '" + id.ToString() + "'";
            SqlDataAdapter dal = new SqlDataAdapter(cmd, cn1);
            DataSet d = new DataSet();
            dal.Fill(d);

            if (d.Tables[0].Rows.Count > 0)
            {
                string tencho = d.Tables[0].Rows[0][1].ToString();
                int gia = int.Parse(d.Tables[0].Rows[0][2].ToString());
                string hinh = d.Tables[0].Rows[0][3].ToString();
                int sl = 1;
                GioHang cart = new GioHang();
                cart = (GioHang)Session["Cart"];
                cart.InsertProduct(id, tencho, hinh, gia, sl);
                Session["Cart"] = cart;
            }

        }

        //hiển thị
        GioHang cart2 = (GioHang)Session["Cart"];
        DataTable t = cart2.giohang;
        GridView1.DataSource = t;
        GridView1.DataBind();
        Label1.Text = cart2.TongTien().ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ThanhToanThanhCong.aspx");
    }
}