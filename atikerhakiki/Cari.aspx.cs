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
           
            con.ConnectionString = @"Data Source=DESKTOP-8JR0EVC\MSSQLSERVER02;Initial Catalog=ATIKER;Integrated Security=True"; 
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            DataSet8TableAdapters.TBLCARISBTableAdapter dt = new DataSet8TableAdapters.TBLCARISBTableAdapter();
            dt.CariEkle(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Update TBLCARISB set CARI_ADI='"+TextBox2.Text.ToString()+"',CARI_KISA_ISIM='"+TextBox3.Text.ToString()+"',CARI_IL='"+TextBox4.ToString()+"',CARI_ILCE='"+TextBox5.Text.ToString()+"' where CARI_KODU='"+TextBox1.Text.ToString()+"' ";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
         
           
        
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Delete from TBLCARISB where CARI_KODU='" + TextBox6.Text.ToString()+"'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {


        }
    }
}