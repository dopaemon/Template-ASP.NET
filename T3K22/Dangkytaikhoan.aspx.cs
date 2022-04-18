using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace T3K22
{
    public partial class Dangkytaikhoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DateTime y1 = DateTime.Now;
            //string nam = y1.Year.ToString();
            //lbltb.Text = nam;
            //int ngay, thang, nam;
            for (int i = 1; i <= 31; i++)
                ddlngay.Items.Add(i.ToString());
            for (int i = 1; i <= 12; i++)
                ddlthang.Items.Add(i.ToString());
            DateTime y1 = DateTime.Now;
            int nam = int.Parse(y1.Year.ToString());
            for (int i = nam; i >= 1920; i--)
                ddlnam.Items.Add(i.ToString());
        }
    }
}