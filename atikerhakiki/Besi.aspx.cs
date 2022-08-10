using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace atikerhakiki
{
    public partial class Besi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet4TableAdapters.TBLBESISBTableAdapter dt = new DataSet4TableAdapters.TBLBESISBTableAdapter();
            dt.BesiEkle(TextBox1.Text, TextBox2.Text, TextBox3.Text,Convert.ToDateTime( TextBox4.Text),  Convert.ToDouble(TextBox5.Text));
        }
    }
}