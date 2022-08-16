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
            con.ConnectionString = @"Data Source=DESKTOP-CQ6VQ08;Initial Catalog=ATIKER;Integrated Security=True";

            con.Open();
           
        }
        
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        public void listeleme2()
        {
            ds = new DataSet();
            cmd.CommandText = "select SUBE_KODU, MODUL_TBL, MODUL_TBL,MODUL_RECNO,TARIH from TBLMUHHR  where HESAP_KODU_RECID='" + TextBox7.Text.ToString() + "'";
            cmd.Connection = con;
            adp = new SqlDataAdapter(cmd);
            adp.Fill(ds);
            cmd.ExecuteNonQuery();
            GridView2.DataSource = ds;
            GridView2.DataBind();

            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet7TableAdapters.TBLMUHSBTableAdapter dt = new DataSet7TableAdapters.TBLMUHSBTableAdapter();
            dt.MuhasebeEkle(Convert.ToInt32(TextBox1.Text), TextBox2.Text, Convert.ToInt32(TextBox3.Text), Convert.ToInt32(TextBox4.Text), TextBox5.Text);
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Delete from TBLMUHSB where HESAP_KODU='" + TextBox1.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Update TBLMUHSB set HESAP_TIPI='" + TextBox5.Text.ToString() + "',ISLETME_NO='" + TextBox1.Text.ToString() + "',HESAP_SINIF_KODU='" + TextBox3.Text.ToString() + "',HESAP_GRUP_KODU='" + TextBox4.Text.ToString() + "' where HESAP_KODU='" + TextBox1.Text.ToString() + "' ";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
           

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            listeleme2();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            var command = "SELECT * FROM TBLMUHSB WHERE HESAP_KODU = '" + TextBox2.Text + "'";

            SqlCommand _cmd = new SqlCommand(command, con);
            var _rd = _cmd.ExecuteReader();
            _rd.Read();
            if (_rd.HasRows)
            {

                TextBox1.Text = _rd.GetValue(10).ToString();
                TextBox3.Text = _rd.GetValue(14).ToString();
                TextBox4.Text = _rd.GetValue(15).ToString();
                TextBox5.Text = _rd.GetValue(17).ToString();


            }
        }
    }
}
