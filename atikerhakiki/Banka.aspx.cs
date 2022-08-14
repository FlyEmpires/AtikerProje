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
    public partial class Banka : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=DESKTOP-CQ6VQ08;Initial Catalog=ATIKER;Integrated Security=True";

            con.Open();
            if (!Page.IsPostBack)
            {
                listeleme();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet5TableAdapters.TBLBANKASBTableAdapter dt = new DataSet5TableAdapters.TBLBANKASBTableAdapter();
            dt.BankaEkle(TextBox1.Text, TextBox2.Text, TextBox3.Text, Convert.ToInt32( TextBox4.Text),TextBox5.Text);
            listeleme();

        }
        public void listeleme()
        {
            ds = new DataSet();
            cmd.CommandText = "select BANKA_HESAP_KODU, BANKA_HESAP_ISIM,IBAN_NO,BANKA_HESAP_TIPI,BANKA_TELEFON from TBLBANKASB";
            cmd.Connection = con;
            adp = new SqlDataAdapter(cmd);
            adp.Fill(ds);
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();
        }

        public void listeleme2()
        {
            ds = new DataSet();
            cmd.CommandText = "select GIREN_TUTAR, CIKAN_TUTAR, BANKA_ACIKLAMA,YEVMIYE_ACIKLAMA from TBLBANKHR where BANKA_HESAP_KODU_RECID='" + TextBox7.Text.ToString() + "'";
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
            cmd.CommandText = "Delete from TBLBANKASB where BANKA_HESAP_KODU='" + TextBox6.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            listeleme2();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Update TBLBANKASB set BANKA_HESAP_ISIM='" + TextBox2.Text.ToString() + "',IBAN_NO='" + TextBox3.Text.ToString() + "',BANKA_HESAP_TIPI='" + TextBox4.Text.ToString() + "',BANKA_TELEFON='" + TextBox5.Text.ToString() + "' where BANKA_HESAP_KODU='" + TextBox8.Text.ToString() + "' ";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();

        }
    }
}