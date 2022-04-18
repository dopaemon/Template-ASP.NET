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
    public partial class QuanTriSanPham : System.Web.UI.Page
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
            grvhienthi.DataSource = bang;
            grvhienthi.DataBind();
            conn.Close();

        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            try
            {
                int kq = -1;
                SqlConnection conn = new SqlConnection(chuoiketnoi);
                SqlCommand cmd = new SqlCommand("sanpham_them", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@tensp", txtten.Text));
                cmd.Parameters.Add(new SqlParameter("@mota", txtmota.Text));
                cmd.Parameters.Add(new SqlParameter("@gia", txtgia.Text));
                //Xử lý control fileupload hình ảnh
                string fullname = "";
                string filename = "";
                if (fuphinhanh.FileContent.Length > 0)
                {
                    // kiểm tra size file
                    int filesize = fuphinhanh.PostedFile.ContentLength / 1024;
                    // cho phép dưới 2 MB mới cho up (1024*3)
                    if (filesize < 2048)
                    {
                        if (fuphinhanh.FileName.EndsWith(".png") || fuphinhanh.FileName.EndsWith(".JPG") || fuphinhanh.FileName.EndsWith(".gif") || fuphinhanh.FileName.EndsWith(".jpeg"))
                        {
                            filename = fuphinhanh.FileName.ToString();
                            fullname = MapPath("Images/" + filename);
                            fuphinhanh.SaveAs(fullname);
                            cmd.Parameters.Add(new SqlParameter("@hinhanh", filename));
                        }
                    }
                    else
                    {
                        lblthongbao.Text = "Kích thước hình lớn hơn 3 MB không cho phép";
                        
                    }

                }
                conn.Open();
                kq = cmd.ExecuteNonQuery();
                if (kq == 1)
                    lblthongbao.Text = "Thành công";
                else
                    lblthongbao.Text = "Thất bại";
            }
            catch(Exception ex)
            {
                lblthongbao.Text = ex.Message;
            }
                    
        }
    }
}