using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace atikerhakiki
{
    public partial class Kasa : System.Web.UI.Page
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
            DataSet6TableAdapters.TBLKASASBTableAdapter dt = new DataSet6TableAdapters.TBLKASASBTableAdapter();
            dt.KasaEkle(TextBox1.Text, TextBox2.Text, Convert.ToInt32(TextBox3.Text), TextBox4.Text, Convert.ToInt32(TextBox5.Text));
            listeleme();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";

        }
        public void listeleme()
        {
            ds = new DataSet();
            cmd.CommandText = "select KASA_KODU, KASA_TANIMI, SUBE_KODU,DOVIZLI_MI,POS_ODEME_TIPI from TBLKASASB";
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
            cmd.CommandText = "select KASA_ACIKLAMA as 'KASA AÇIKLAMA', YEVMIYE_ACIKLAMA, GIREN_TUTAR,CIKAN_TUTAR,BELGE_NO from TBLKASAHR where KASA_KODU_RECID='" + TextBox1.Text.ToString() + "'";
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
            cmd.CommandText = "Delete from TBLKASASB where KASA_KODU='" + TextBox1.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Update TBLKASASB set KASA_TANIMI ='" + TextBox2.Text.ToString() + "',SUBE_KODU ='" + TextBox3.Text.ToString() + "',DOVIZLI_MI='" + TextBox4.Text.ToString() + "',POS_ODEME_TIPI='" + TextBox5.Text.ToString() + "' where KASA_KODU='" + TextBox1.Text.ToString() + "' ";
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

            var command = "SELECT * FROM TBLKASASB WHERE KASA_KODU = '" + TextBox1.Text + "'";

            SqlCommand _cmd = new SqlCommand(command, con);
            var _rd = _cmd.ExecuteReader();
            _rd.Read();
            if (_rd.HasRows)
            {

                TextBox2.Text = _rd.GetValue(13).ToString();
                TextBox3.Text = _rd.GetValue(14).ToString();
                TextBox4.Text = _rd.GetValue(15).ToString();
                TextBox5.Text = _rd.GetValue(21).ToString();


            }
        }
    }
}