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
        SqlDataAdapter adp = new SqlDataAdapter();
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=DESKTOP-CQ6VQ08;Initial Catalog=ATIKER;Integrated Security=True";

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
    }
}