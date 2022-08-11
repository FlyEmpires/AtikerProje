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
            con.ConnectionString = @"Data Source=DESKTOP-CQ6VQ08;Initial Catalog=ATIKER;Integrated Security=True";

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
        protected void Button2_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Delete from TBLKASASB where KASA_KODU='" + TextBox6.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}