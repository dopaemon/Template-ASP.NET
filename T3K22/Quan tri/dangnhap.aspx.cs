using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace T3K22.Quan_tri
{
    public partial class dangnhap : System.Web.UI.Page
    {
        // khai báo 1 chuỗi kết nối đến cơ sở dữ liệu
        // tên server, tên csdl, tendn, matkhau
        string chuoiketnoi = @"Data Source=ADMIN\SQLEXPRESS;Initial Catalog = T3K21; User ID = sa; pwd=sa";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangnhap_Click(object sender, EventArgs e)
        {
            int kq = -1;
            SqlConnection conn = new SqlConnection(chuoiketnoi);
            SqlCommand cmd = new SqlCommand("dangnhap", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@tendangnhap", txttendn.Text));
            cmd.Parameters.Add(new SqlParameter("@matkhau", txtmk.Text));
            conn.Open();
            kq = (int)cmd.ExecuteScalar();
            if (kq == 1)
                lbltb.Text = "Đăng nhập thành công";
            else
                lbltb.Text = "Đăng nhập thất bại. Vui lòng thử lại";
            conn.Close();
        }
    }
}