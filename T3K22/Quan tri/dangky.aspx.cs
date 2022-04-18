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
    public partial class dangky : System.Web.UI.Page
    {
        // khai báo 1 chuỗi kết nối đến cơ sở dữ liệu
        // tên server, tên csdl, tendn, matkhau
        string chuoiketnoi = @"Data Source=ADMIN\SQLEXPRESS;Initial Catalog = T3K21; User ID = sa; pwd=sa";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndk_Click(object sender, EventArgs e)
        {
            int ketqua = -1;
            SqlConnection conn = new SqlConnection(chuoiketnoi);
            SqlCommand cmd = new SqlCommand("dangky", conn);

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@tendangnhap", txtten.Text));
            cmd.Parameters.Add(new SqlParameter("@matkhau", txtmk.Text));
            cmd.Parameters.Add(new SqlParameter("@email", txtemail.Text));
            conn.Open();
            ketqua = cmd.ExecuteNonQuery();
            if (ketqua == 1)
                lbltb.Text = lbltb.Text + "Đăng ký tài khoản đã thành công";
            else
                lbltb.Text = lbltb.Text + "Đăng ký tài khoản không thành công. Vui lòng thử lại";
            conn.Close();

        }
    }
}