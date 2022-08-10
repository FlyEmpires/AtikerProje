using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace atikerhakiki
{
    public partial class Muhasebe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet7TableAdapters.TBLMUHSBTableAdapter dt = new DataSet7TableAdapters.TBLMUHSBTableAdapter();
            dt.MuhasebeEkle(Convert.ToInt32(TextBox1.Text), TextBox2.Text, Convert.ToInt32(TextBox3.Text), Convert.ToInt32(TextBox4.Text), TextBox5.Text);
        }
    }
}