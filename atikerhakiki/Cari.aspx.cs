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
    public partial class Cari : System.Web.UI.Page
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
            try
            {

                DataSet8TableAdapters.TBLCARISBTableAdapter dt = new DataSet8TableAdapters.TBLCARISBTableAdapter();
                dt.CariEkle(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text);
            }
            catch (Exception)
            {
                Response.Write("<script>alert('AYNI CARİ KODUNDAN TEKRAR GİRELEMEZ')</script>");
                //Label1.Text = "AYNI CARİ KODUNDAN TEKRAR GİRİLEMEZ";

            }
            listeleme();


        }
        public void listeleme()
        {
            ds = new DataSet();
            cmd.CommandText = "select CARI_ADI,CARI_KODU, CARI_KISA_ISIM, CARI_IL,CARI_ILCE from TBLCARISB";
            cmd.Connection = con;
            adp = new SqlDataAdapter(cmd);
            adp.Fill(ds);
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        public void listeleme2()
        {
            ds = new DataSet();
            cmd.CommandText = "select YEVMIYE_ACIKLAMA, KAYIT_ACIKLAMA, BORC,ALACAK from TBLCARIHR where CARI_KODU_RECID='" + TextBox7.Text.ToString() + "'";
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
            cmd.CommandText = "Update TBLCARISB set CARI_ADI='" + TextBox2.Text.ToString() + "',CARI_KISA_ISIM='" + TextBox3.Text.ToString() + "',CARI_IL='" + TextBox4.Text.ToString() + "',CARI_ILCE='" + TextBox5.Text.ToString() + "' where CARI_KODU='" + TextBox1.Text.ToString() + "' ";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();



        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Delete from TBLCARISB where CARI_KODU='" + TextBox6.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            listeleme2();
        }




    }
}