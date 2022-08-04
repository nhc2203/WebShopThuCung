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
using System.Collections;

public partial class page_husky : System.Web.UI.Page
{
    SqlConnection cn1 = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        cn1.Open();

        String strcmd = "select * from CHO where MALOAICHO = 'MLC001'";
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
    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    if (name.Text != "")
    //    {

    //        string conStr = "Data Source = KERO; Initial Catalog = QL_SHOPTHUCUNG; Integrated Security = true";
    //        using (SqlConnection con = new SqlConnection(conStr))
    //        {
    //            SqlCommand cmd = new SqlCommand();
    //            cmd.CommandText = "select * from CHO where TENCHO like '%' +@ten+ '%' ";
    //            cmd.Connection = con;
    //            SqlParameter par1 = new SqlParameter("@ten", name.Text);
    //            cmd.Parameters.Add(par1);


    //            con.Open();
    //            DataList1.DataSource = cmd.ExecuteReader();
    //            DataList1.DataBind();

    //            con.Close();
    //        }

    //    }
    //}
    //protected void DataList_ItemCommand(object sender, DataListCommandEventArgs e)
    //{
    //    ArrayList gioCu = (ArrayList)Session["GioHang"];
    //    Label gia = (Label) DataList1.Row.
    //}
}