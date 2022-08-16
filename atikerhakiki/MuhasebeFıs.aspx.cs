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
    public partial class MuhasebeFıs : System.Web.UI.Page
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
        public void listeleme()
        {
            ds = new DataSet();
            cmd.CommandText = "select BELGE_NO, FISNUM, TARIH,FISTIPI,AY_KODU from TBLMUHFISSB";
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
            cmd.CommandText = "select SUBE_KODU, LIST_NO, TARIH,FISNUM,AY_KODU from TBLMUHFISHR where FISNUM='" + TextBox8.Text.ToString() + "'";
            cmd.Connection = con;
            adp = new SqlDataAdapter(cmd);
            adp.Fill(ds);
            cmd.ExecuteNonQuery();
            GridView2.DataSource = ds;
            GridView2.DataBind();

            con.Close();
        }
        public void temizleme()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            DataSet10TableAdapters.TBLMUHFISSBTableAdapter dt = new DataSet10TableAdapters.TBLMUHFISSBTableAdapter();
            dt.MuhasebeFisEkle(TextBox1.Text, TextBox2.Text, Convert.ToDateTime(TextBox3.Text), Convert.ToInt32(TextBox4.Text), Convert.ToInt32(TextBox5.Text));
            //dt = new DataTable();
            //cmd.CommandText = ("insert into TBLMUHFISSB values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" +TextBox5.Text + "')");
            //cmd.Connection = con;
            //cmd.ExecuteNonQuery();
            temizleme();
            listeleme();    
        }
        protected void Button2_Click1(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Update TBLMUHFISSB set BELGE_NO='" + TextBox1.Text.ToString() + "',TARIH='" + TextBox3.Text.ToString() + "',FISTIPI='" + TextBox4.Text.ToString() + "',AY_KODU='" + TextBox5.Text.ToString() + "' where FISNUM='" + TextBox1.Text.ToString() + "' ";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Delete from TBLMUHFISSB where FISNUM='" + TextBox1.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            listeleme2();
        }
    }
    }
