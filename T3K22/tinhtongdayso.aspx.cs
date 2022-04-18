using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace T3K22
{
    public partial class tinhtongdayso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntinhtong_Click(object sender, EventArgs e)
        {
            //int tong = 0;
            //int so = int.Parse(txtso.Text);
            //for(int i = 1; i<=so; i++)
            //{
            //    tong = tong + i;
            //}
            //txttong.Text = tong.ToString();
            int tong = 0;
            int i = 0;
            int so = int.Parse(txtso.Text);
            while(i <=so)
            {
                tong = tong + i;
                i++;
            }
            txttong.Text = tong.ToString();
        }
    }
}