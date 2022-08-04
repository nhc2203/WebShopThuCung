using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using App_Code;
public partial class PageLoai_PageLoai_Meo : System.Web.UI.Page
{
    SqlConnection cn1 = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        cn1.Open();

        Response.Write(Request.QueryString["ID"].ToString());
        String strcmd = "select HINH, GIA, TENMEO, NICKNAME, GIOITINH, TUOI, MAU from MEO, CTMEO where  MAM =" + Request.QueryString["ID"].ToString() + " and MAMEO=MAM";
        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn1);
        DataSet ds = new DataSet();
        da.Fill(ds, "CTMEO");

        DataList1.DataSource = ds.Tables["CTMEO"];
        DataList1.DataBind();

        //Tạo biến
        GioHang cart = new GioHang();
        cart.CreateItem();
        Session["Cart"] = cart;
    }
}