﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using App_Code;

public partial class VatDungChoCho_Page_ThucAnCho : System.Web.UI.Page
{
    SqlConnection cn1 = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        cn1.Open();

        String strcmd = "select * from PHUKIEN where MALOAIPK = 'PKC001'";
        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn1);
        DataSet ds = new DataSet();
        da.Fill(ds, "PHUKIEN");

        DataList1.DataSource = ds.Tables["PHUKIEN"];
        DataList1.DataBind();

        //Tạo biến
        GioHang cart = new GioHang();
        cart.CreateItem();
        Session["Cart"] = cart;
    }
}