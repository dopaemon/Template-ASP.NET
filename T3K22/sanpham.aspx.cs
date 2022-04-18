using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace T3K22
{
    public partial class sanpham : System.Web.UI.Page
    {
        string chuoiketnoi = @"Data Source=ADMIN\SQLEXPRESS;Initial Catalog = T3K21; User ID = sa; pwd=sa";
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable bang = new DataTable();
            SqlConnection conn = new SqlConnection(chuoiketnoi);
            SqlCommand cmd = new SqlCommand("sanpham_xem", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            conn.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(bang);
            dlsanpham.DataSource = bang;
            dlsanpham.DataBind();
            conn.Close();

        }
    }
}