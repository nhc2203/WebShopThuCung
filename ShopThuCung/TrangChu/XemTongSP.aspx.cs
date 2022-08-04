using App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrangChu_XemTongSP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using(SqlConnection cn1 = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString))
        { 
        cn1.Open();

        String strcmd = "select * from CHO";
        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn1);
        DataSet ds = new DataSet();
        da.Fill(ds, "CHO");

        DataList1.DataSource = ds.Tables["CHO"];
        DataList1.DataBind();
        }
        using(SqlConnection cn1 = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString))
        { 
        String strcmd2 = "select * from MEO";
        SqlDataAdapter db = new SqlDataAdapter(strcmd2, cn1);
        DataSet ds1 = new DataSet();
        db.Fill(ds1, "MEO");

        DataList2.DataSource = ds1.Tables["MEO"];
        DataList2.DataBind();
        }
        using (SqlConnection cn1 = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString))
        {
            String strcmd3 = "select * from TONGSANPHAM";
            SqlDataAdapter dbd = new SqlDataAdapter(strcmd3, cn1);
            DataSet ds2 = new DataSet();
            dbd.Fill(ds2,"TONGSANPHAM");

            DataList3.DataSource = ds2.Tables["TONGSANPHAM"];
            DataList3.DataBind();
        }
    }
}