using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Search : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Page_Init(object sender, EventArgs e)
    {
        Master.ButtonSearch.Click += ButtonSearch_Click;
    }
    void ButtonSearch_Click(object sender, EventArgs e)
    {

        String conStr = "Data Source= KERO; Initial Catalog= QL_SHOPTHUCUNG; Integrated Security=true ";
        using (SqlConnection con = new SqlConnection(conStr))
        {
            String cmdStr = "select * from CHO where TENCHO like '%' + @TenCho + '%'  ";
            SqlCommand cmd = new SqlCommand(cmdStr, con);
            SqlParameter par = new SqlParameter("@TenCho", Master.TextBoxSearch.Text);
            cmd.Parameters.Add(par);
            con.Open();
            DataList1.DataSource = cmd.ExecuteReader();
            DataList1.DataBind();
            con.Close();
        }
    }
}