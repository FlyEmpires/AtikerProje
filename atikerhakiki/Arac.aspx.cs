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
    public partial class Arac : System.Web.UI.Page
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
            if (!Page.IsPostBack)
            {
                listeleme();
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet2TableAdapters.TBLARACSBTableAdapter dt = new DataSet2TableAdapters.TBLARACSBTableAdapter();
            dt.AraçEkle(Convert.ToDateTime( TextBox1.Text),TextBox2.Text, TextBox3.Text, TextBox4.Text,TextBox5.Text);
            listeleme();
        }
        public void listeleme()
        {
            ds = new DataSet();
            cmd.CommandText = "select REC_NO, REC_DATE, REC_USERNAME, ARAC_PLAKA,ARAC_MODEL,ARAC_MARKA from TBLARACSB";
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
            cmd.CommandText = "DELETE FROM TBLARACSB WHERE REC_NO = '" + TextBox6.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Update TBLARACSB set REC_DATE='" + TextBox1.Text.ToString() + "',REC_USERNAME='" + TextBox2.Text.ToString() + "',ARAC_MODEL='" + TextBox4.Text.ToString() + "',ARAC_MARKA='" + TextBox5.Text.ToString() + "' where ARAC_PLAKA='" + TextBox3.Text.ToString() + "' ";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();

        }
    }
}