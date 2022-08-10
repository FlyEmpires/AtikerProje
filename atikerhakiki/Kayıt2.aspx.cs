using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.OleDb;
namespace atikerhakiki

{
    public partial class Kayıt2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

            DataSet1TableAdapters.TBLSTOKSBTableAdapter dt = new DataSet1TableAdapters.TBLSTOKSBTableAdapter();
            dt.Stokekle(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, Convert.ToInt32(TextBox5.Text));

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //OleDbCommand sil_sql = new OleDbCommand();
            //SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-8JR0EVC\MSSQLSERVER02;Initial Catalog=ATIKER;Integrated Security=True");
            //sil_sql.CommandText = "delete from TBLSTOKSB where REC_NO=@id";
            //sil_sql.Parameters.AddWithValue("@id",GridView1.SelectedRow.Cells[1].Text);
            //if (baglanti.State!=System.Data.ConnectionState.Open)
            //{
            //    baglanti.Open();

            //}
            //if (sil_sql.ExecuteNonQuery()>0)
            //{
            //    Label1.Text = "SİLME BAŞARILI";
            //}
            //baglanti.Close();
            //GridView1.SelectedIndex = -1;




            //using (SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8JR0EVC\MSSQLSERVER02;Initial Catalog=ATIKER;Integrated Security=True"))
            //{
            //    con.Open();
            //    using (SqlCommand com = new SqlCommand("myProcedureName", con))
            //    {
            //        using (SqlCommand com = new SqlCommand("DELETE FROM TBLSTOKSB WHERE id=@ID", con))
            //        {
            //            com.Parameters.AddWithValue("@ID",);
            //            com.ExecuteNonQuery();
            //        }
                 
            //        com.Parameters.AddWithValue("@STOK_ADI, "");
            //        com.Parameters.AddWithValue("@STOK_TIPI, "");
            //        com.ExecuteNonQuery();
            //    }

            //    con.Close();
            //}

        }
    }
}