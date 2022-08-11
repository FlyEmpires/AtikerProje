using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;

namespace atikerhakiki


{
    public partial class Kayıt2 : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
              
            }
            con.ConnectionString = @"Data Source=DESKTOP-8JR0EVC\MSSQLSERVER02;Initial Catalog=ATIKER;Integrated Security=True";
            con.Open();
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

            dt = new DataTable();
            cmd.CommandText = ("Delete from TBLSTBAKIYE WHERE REC_NO='" + TextBox6.Text.ToString());
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

        }
    }
}