using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace atikerhakiki
{
    public partial class ksyıt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLSTOKSBTableAdapter dt = new DataSet1TableAdapters.TBLSTOKSBTableAdapter();
            dt.Stokekle(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, Convert.ToInt32( TextBox5.Text));

        }

    }
}