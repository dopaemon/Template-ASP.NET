using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace T3K22
{
    public partial class nhapsonguyen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndoc_Click(object sender, EventArgs e)
        {
            int so;
            so = int.Parse(txtso.Text);
            switch(so)
            {
                case 0:
                    txtdocso.Text = "Không";
                    break;
                case 1:
                    txtdocso.Text = "Một";
                    break;
                case 2:
                    txtdocso.Text = "Hai";
                    break;
                case 3:
                    txtdocso.Text = "Ba";
                    break;
                case 4:
                    txtdocso.Text = "Bốn";
                    break;
                
                default:
                    txtdocso.Text = "Vui lòng nhập số từ 0 - 9";
                    break;
                       
            }    
        }
    }
}