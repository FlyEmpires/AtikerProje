using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace atikerhakiki
{
    public partial class Proje : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=DESKTOP-8JR0EVC\MSSQLSERVER02;Initial Catalog=ATIKER;Integrated Security=True";

            con.Open();
            if (!Page.IsPostBack)
            {
                listeleme();
            }
        }
        public void listeleme()
        {
            ds = new DataSet();
            cmd.CommandText = "select PROJE_KODU, PROJE_ADI, PROJE_BASLAMA_TARIHI,PROJE_AKTIF,PROJE_BASLAMA_TARIHI from TBLPROJEDOSYA";
            cmd.Connection = con;
            adp = new SqlDataAdapter(cmd);
            adp.Fill(ds);
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox6.Text = Convert.ToString(Calendar1.SelectedDate.ToShortDateString()); DataSet9TableAdapters.TBLPROJEDOSYATableAdapter dt = new DataSet9TableAdapters.TBLPROJEDOSYATableAdapter();
            dt.ProjeEkle(TextBox1.Text, TextBox2.Text, Convert.ToDateTime( Calendar1.SelectedDate.ToString("MM/dd/yyyy")), Convert.ToInt32(TextBox4.Text), Convert.ToDateTime(Calendar2.SelectedDate.ToString("MM/dd/yyyy")));
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
                dt = new DataTable();
                cmd.CommandText = "Delete from TBLPROJEDOSYA where PROJE_KODU='" + TextBox7.Text.ToString() + "'";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                listeleme();
            
        }
    }
}