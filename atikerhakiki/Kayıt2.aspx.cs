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
            con.ConnectionString = @"Data Source=DESKTOP-ICQEILB;Initial Catalog=ATIKER;Integrated Security=True";

            con.Open();
            if (!Page.IsPostBack)
            {
                listeleme();
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

            DataSet1TableAdapters.TBLSTOKSBTableAdapter dt = new DataSet1TableAdapters.TBLSTOKSBTableAdapter();
            dt.Stokekle(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, Convert.ToInt32(TextBox5.Text));
            listeleme();

        }
        public void listeleme ()
        {
            ds = new DataSet();
            cmd.CommandText = "select REC_NO, STOK_ADI, STOK_TIPI,STOK_KISA_ADI,STOK_KODU,PERAKENDE_ALIS_KDV from TBLSTOKSB";
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
            cmd.CommandText = "SELECT TARIH, BELGE_NO, BELGESB_RECNO, BELGE_TIPI, SUBE_KODU FROM TBLSTOKHR where STOK_KODU_RECID='" + TextBox8.Text.ToString() + "'";
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





            dt = new DataTable();
            cmd.CommandText = "Delete from TBLSTOKSB WHERE REC_NO='" + TextBox1.Text.ToString()+"'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Update TBLSTOKSB set STOK_ADI='" + TextBox1.Text.ToString() + "',STOK_TIPI='" + TextBox2.Text.ToString() + "',STOK_KISA_ADI='" + TextBox3.Text.ToString() + "',PERAKENDE_ALIS_KDV='" + TextBox5.Text.ToString() + "' where STOK_KODU='" + TextBox1.Text.ToString() + "' ";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            listeleme2();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            int index = GridView1.SelectedRow.RowIndex;
            TextBox lblValuename = (TextBox)row.FindControl("TextBox1");
            TextBox lblValueCountry = (TextBox)row.FindControl("TextBox2");
            string message = "Row Index: " + index + "\\nName: " + lblValuename.Text + "\\nCountry: " + lblValueCountry.Text;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);


        }
    }
}