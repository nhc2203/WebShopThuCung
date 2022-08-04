using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for GioHang
/// </summary>
namespace App_Code
{
    public class GioHang
    {
        public DataTable giohang = new DataTable();
        public void CreateItem()
        {
            giohang.Columns.Add("MACHO");
            giohang.Columns.Add("TENCHO");
            giohang.Columns.Add("HINH");
            giohang.Columns.Add("GIA");
            giohang.Columns.Add("SOLUONG");
        }
        //Thêm
        public Boolean InsertProduct(int MAC, string Tencho, string Hinh, int Gia, int Soluong)
        {
            Boolean flag = false;
            foreach (DataRow d in giohang.Rows)
            {
                if (int.Parse(d[0].ToString()) == MAC)
                {
                    d[4] = int.Parse(d[4].ToString()) + Soluong;
                    flag = true;
                }
            }
            if (flag == false)
            {
                DataRow dong = giohang.NewRow();
                dong[0] = MAC;
                dong[1] = Tencho;
                dong[2] = Hinh;
                dong[3] = Gia;
                dong[4] = Soluong;
                giohang.Rows.Add(dong);
                return true;
            }
            return false;
        }
        public Boolean Update(DataRow RowID, int soluongmoi)
        {
            foreach (DataRow d in giohang.Rows)
            {
                if (d == RowID)
                {
                    d[4] = soluongmoi;
                    return true;
                }
            }
            return false;
        }
        //Tổng tiền

        public int TongTien()
        {
            int a = 0;
            foreach (DataRow d in giohang.Rows)
            {
                a = a + int.Parse(d[3].ToString()) * int.Parse(d[4].ToString());
            }
            return a;
        }
        public Boolean DeleteProduct(DataRow MAC)
        {
            
            foreach (DataRow d in giohang.Rows)
            {
                if (d == MAC)
                {

                    giohang.Rows.Remove(d);
                    return true;

                }
            }

            return false;
        }
        public int truTien()
        {
            int a = 0;
            foreach (DataRow d in giohang.Rows)
            {
                a = a - int.Parse(d[3].ToString()) * int.Parse(d[4].ToString());
            }
            return a;
        }
        //public string HINH
        //{
        //    get { return HINH;}
        //    set { HINH = value; }
        //}
        //public string MACHO
        //{
        //    get { return MACHO; }
        //    set { MACHO = value; }
        //}
        //public string TENCHO
        //{
        //    get { return TENCHO; }
        //    set { TENCHO = value; }
        //}
        //public int GIA
        //{
        //    get { return GIA; }
        //    set { GIA = value; }
        //}
        //public int SOLUONG
        //{
        //    get { return SOLUONG; }
        //    set { SOLUONG = value; }
        //}
        //public int THANHTIEN
        //{
        //    get { return SOLUONG*GIA; }
        //}
        //public GioHang()
        //{

        //}

    
    }
}