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
    public partial class QuanTriTaiKhoan : System.Web.UI.Page
    {
        string chuoiketnoi = @"Data Source=ADMIN\SQLEXPRESS;Initial Catalog = T3K21; User ID = sa; pwd=sa";
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable bang = new DataTable();
            SqlConnection conn = new SqlConnection(chuoiketnoi);
            SqlCommand cmd = new SqlCommand("xemtaikhoan", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            conn.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(bang);
            grvhienthi.DataSource = bang;
            grvhienthi.DataBind();
            conn.Close();

        }

        protected void btntim_Click(object sender, EventArgs e)
        {
            DataTable bang = new DataTable();
            SqlConnection conn = new SqlConnection(chuoiketnoi);
            SqlCommand cmd = new SqlCommand("timtaikhoan", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@tendangnhap", txttim.Text));
            conn.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(bang);
            grvhienthi.DataSource = bang;
            grvhienthi.DataBind();
            conn.Close();
        }
    }
}