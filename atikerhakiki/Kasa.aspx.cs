using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace atikerhakiki
{
    public partial class Kasa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet6TableAdapters.TBLKASASBTableAdapter dt = new DataSet6TableAdapters.TBLKASASBTableAdapter();
            dt.KasaEkle(TextBox1.Text, TextBox2.Text, Convert.ToInt32(TextBox3.Text), TextBox4.Text, Convert.ToInt32(TextBox5.Text));

        }
    }
}