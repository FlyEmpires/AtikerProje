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
            con.ConnectionString = @"Data Source=DESKTOP-ICQEILB;Initial Catalog=ATIKER;Integrated Security=True";

            con.Open();
            if (!Page.IsPostBack)
            {
                listeleme();
            }
        }


        public void listeleme()
        {
            ds = new DataSet();
            cmd.CommandText = "select PROJE_KODU, PROJE_ADI, PROJE_BASLAMA_TARIHI,PROJE_AKTIF,PROJE_TESLIM_TARIHI from TBLPROJEDOSYA";
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

            DataSet9TableAdapters.TBLPROJEDOSYATableAdapter dt = new DataSet9TableAdapters.TBLPROJEDOSYATableAdapter();
            dt.ProjeEkle(TextBox1.Text, TextBox2.Text, Convert.ToDateTime(TextBox5.Text), Convert.ToInt32(TextBox4.Text), Convert.ToDateTime(TextBox6.Text));
            listeleme();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox5.Text = "";
            TextBox4.Text = "";
            TextBox6.Text = "";
        }
        public void listeleme2()
        {
            ds = new DataSet();
            cmd.CommandText = "select PROJE_KODU, PROJE_ADI, PROJE_SIPARIS_NO,PROJE_AKTIF,ACIK_SUBELER from TBL_PROJE_DOSYAHR where PROJE_KODU='" + TextBox1.Text.ToString() + "'";
            cmd.Connection = con;
            adp = new SqlDataAdapter(cmd);
            adp.Fill(ds);
            cmd.ExecuteNonQuery();
            
            GridView2.DataSource = ds;
            GridView2.DataBind();

            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            dt = new DataTable();
            cmd.CommandText = "Delete from TBLPROJEDOSYA where PROJE_KODU='" + TextBox1.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();

        }
      
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox5.Text = (Calendar1.SelectedDate.ToShortDateString());
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            TextBox6.Text = (Calendar2.SelectedDate.ToShortDateString());
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Update TBLPROJEDOSYA set PROJE_ADI='" + TextBox2.Text.ToString() + "',PROJE_BASLAMA_TARIHI='" + Convert.ToDateTime(Convert.ToString(TextBox5.Text)).ToString("yyyyMMdd") + "',PROJE_AKTIF='" + TextBox4.Text.ToString() + "',PROJE_TESLIM_TARIHI='" + Convert.ToDateTime(Convert.ToString(TextBox6.Text)).ToString("yyyyMMdd") + "' where PROJE_KODU='" + TextBox1.Text.ToString() + "' ";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            listeleme2();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            var command = "SELECT * FROM TBLPROJEDOSYA WHERE PROJE_KODU = '" + TextBox1.Text + "'";

            SqlCommand _cmd = new SqlCommand(command, con);
            var _rd = _cmd.ExecuteReader();
            _rd.Read();
            if (_rd.HasRows)
            {

                TextBox2.Text = _rd.GetValue(11).ToString();
                TextBox5.Text = _rd.GetValue(13).ToString();
                TextBox4.Text = _rd.GetValue(25).ToString();
                TextBox6.Text = _rd.GetValue(14).ToString();


            }
        }
    }
}