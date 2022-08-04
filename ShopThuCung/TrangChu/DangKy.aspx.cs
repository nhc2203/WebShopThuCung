using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class TrangChu_DangKy : System.Web.UI.Page
{
    SqlConnection cn1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Guithongtin_Click(object sender, EventArgs e)
    {
        cn1.Open();
        String strcmd = "insert into TAIKHOAN values(@hoten,@tentk,@matkhau,@email,@gioitinh,@noichon)";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn1;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = strcmd;

        SqlParameter par = cmd.CreateParameter();
        par.ParameterName = "@hoten";
        par.Value = Hoten.Text;
        cmd.Parameters.Add(par);

        SqlParameter par2 = cmd.CreateParameter();
        par2.ParameterName = "@tentk";
        par2.Value = Taikhoan.Text;
        cmd.Parameters.Add(par2);

        SqlParameter par3 = cmd.CreateParameter();
        par3.ParameterName = "@matkhau";
        par3.Value = Matkhau.Text;
        cmd.Parameters.Add(par3);

        SqlParameter par4 = cmd.CreateParameter();
        par4.ParameterName = "@email";
        par4.Value = Email.Text;
        cmd.Parameters.Add(par4);

        SqlParameter par5 = cmd.CreateParameter();
        par5.ParameterName = "@gioitinh";
        par5.Value = RadioButtonList1.SelectedValue;
        cmd.Parameters.Add(par5);

        SqlParameter par6 = cmd.CreateParameter();
        par6.ParameterName = "@noichon";
        par6.Value = DropDownList1.SelectedValue;
        cmd.Parameters.Add(par6);

        int rs = cmd.ExecuteNonQuery();
        if (rs == 1)
        {
            Response.Redirect("DKThanhCong.aspx");
            cn1.Close();
        }
    }
}