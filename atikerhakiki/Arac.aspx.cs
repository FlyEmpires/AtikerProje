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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet2TableAdapters.TBLARACSBTableAdapter dt = new DataSet2TableAdapters.TBLARACSBTableAdapter();
            dt.AraçEkle(Convert.ToDateTime( TextBox1.Text),TextBox2.Text, TextBox3.Text, TextBox4.Text,TextBox5.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            dt = new DataTable();
            cmd.CommandText = "DELETE FROM TBLARACSB WHERE REC_NO = '" + TextBox6.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            
        }
    }
}