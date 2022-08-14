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
    public partial class Muhasebe : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        // Verileri almak için köprü görevi görür
        SqlDataAdapter adp = new SqlDataAdapter();

        //Satırlar datayı sütunlar veri alanlarını temsil eder
        DataTable dt = new DataTable();


        //Veritabanınızdan bağlantısız olan çalışan bir nesnedir
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=DESKTOP-8JR0EVC\MSSQLSERVER02;Initial Catalog=ATIKER;Integrated Security=True";

            con.Open();
           
        }
        
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
            
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet7TableAdapters.TBLMUHSBTableAdapter dt = new DataSet7TableAdapters.TBLMUHSBTableAdapter();
            dt.MuhasebeEkle(Convert.ToInt32(TextBox1.Text), TextBox2.Text, Convert.ToInt32(TextBox3.Text), Convert.ToInt32(TextBox4.Text), TextBox5.Text);
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Delete from TBLMUHSB where HESAP_KODU='" + TextBox6.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Update TBLMUHSB set HESAP_TIPI='" + TextBox5.Text.ToString() + "',ISLETME_NO='" + TextBox1.Text.ToString() + "',HESAP_SINIF_KODU='" + TextBox3.Text.ToString() + "',HESAP_GRUP_KODU='" + TextBox4.Text.ToString() + "' where HESAP_KODU='" + TextBox2.Text.ToString() + "' ";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
           

        }
    }
}
