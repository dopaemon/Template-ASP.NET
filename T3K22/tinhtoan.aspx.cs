using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace T3K22
{
    public partial class tinhtoan : System.Web.UI.Page
    {
        //tinhtoan tt = new tinhtoan();
        //Sinhvien son = new Sinhvien();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void btntong_Click(object sender, EventArgs e)
        {
            try
            {
                int a, b, kq;
                a = int.Parse(txta.Text); ;
                b = Convert.ToInt32(txtb.Text);
                kq = a + b;
                txtkq.Text = kq.ToString();
                //txtkq.Text = tt.Tong2So(a, b).ToString();
            }
            catch
            {
                lbltb.Text = "Bạn phải nhập vào số";
                
            }


        }
    }
}