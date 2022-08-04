using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
public partial class TrangChu_ThemSANPHAM : System.Web.UI.Page
{
    SqlConnection cn1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
    String b;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Guithongtin_Click(object sender, EventArgs e)
    {

        b = "/husky/" + FileUpload1.FileName.ToString();
        cn1.Open();
        String strcmd = "insert into Cho values('"+Hoten.Text+"','"+Taikhoan.Text+"','"+b.ToString()+"','"+TinhTrang.Text+"','"+DropDownList2.SelectedItem.ToString()+"')";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn1;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = strcmd;
        int rs = cmd.ExecuteNonQuery();
        if (rs == 1)
        {
            Response.Redirect("DKThanhCong.aspx");
            cn1.Close();
        }
    }
}