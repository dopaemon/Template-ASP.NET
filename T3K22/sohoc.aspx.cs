using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace T3K22
{
    public partial class sohoc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntim_Click(object sender, EventArgs e)
        {
            int a, b;
            a = Convert.ToInt32(txtA.Text);
            b = int.Parse(txtB.Text);
            if (a > b)
            {
                txtlon.Text = a.ToString();
                txtnho.Text = b.ToString();
            }
            else
            {
                txtlon.Text = b.ToString();
                txtnho.Text = a.ToString();
            }    
            
        }
    }
}