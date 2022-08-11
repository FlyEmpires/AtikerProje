using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace atikerhakiki
{
    public partial class Proje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox6.Text = Convert.ToString(Calendar1.SelectedDate.ToShortDateString()); DataSet9TableAdapters.TBLPROJEDOSYATableAdapter dt = new DataSet9TableAdapters.TBLPROJEDOSYATableAdapter();
            dt.ProjeEkle(TextBox1.Text, TextBox2.Text, Convert.ToDateTime( Calendar1.SelectedDate.ToString("MM/dd/yyyy")), Convert.ToInt32(TextBox4.Text), Convert.ToDateTime(Calendar2.SelectedDate.ToString("MM/dd/yyyy")));
        }
    }
}