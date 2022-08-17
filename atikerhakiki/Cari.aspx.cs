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
    public partial class Cari : System.Web.UI.Page
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

            try
            {
                //if (TextBox1.Text != "")
                //{
                //    SqlCommand cm = new SqlCommand("select CARI_ADI,CARI_KODU, CARI_KISA_ISIM, CARI_IL,CARI_ILCE from TBLCARISB where CARI_KODU='"  , con);
                //    cm.Parameters.AddWithValue(TextBox1.Text);
                //    SqlDataReader da = cmd.ExecuteReader();
                //    while (da.Read())
                //    {
                //        TextBox2.Text = da.GetValue(1).ToString();
                //    }

                //}
                DataSet8TableAdapters.TBLCARISBTableAdapter dt = new DataSet8TableAdapters.TBLCARISBTableAdapter();
                dt.CariEkle(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text);
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
            }
            catch (Exception)
            {
                Response.Write("<script>alert('AYNI CARİ KODUNDAN TEKRAR GİRELEMEZ')</script>");
                //Label1.Text = "AYNI CARİ KODUNDAN TEKRAR GİRİLEMEZ";

            }
            listeleme();


        }
        public void listeleme()
        {
            ds = new DataSet();
            cmd.CommandText = "select CARI_ADI,CARI_KODU, CARI_KISA_ISIM, CARI_IL,CARI_ILCE from TBLCARISB";
            cmd.Connection = con;
            adp = new SqlDataAdapter(cmd);
            adp.Fill(ds);
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        public void listeleme2()
        {
            ds = new DataSet();
            cmd.CommandText = "select YEVMIYE_ACIKLAMA, KAYIT_ACIKLAMA, BORC,ALACAK from TBLCARIHR where CARI_KODU_RECID='" + TextBox1.Text.ToString() + "'";
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
            cmd.CommandText = "Update TBLCARISB set CARI_ADI='" + TextBox2.Text.ToString() + "',CARI_KISA_ISIM='" + TextBox3.Text.ToString() + "',CARI_IL='" + TextBox4.Text.ToString() + "',CARI_ILCE='" + TextBox5.Text.ToString() + "' where CARI_KODU='" + TextBox1.Text.ToString() + "' ";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Delete from TBLCARISB where CARI_KODU='" + TextBox1.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            listeleme2();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
                        //var command = "SELECT * FROM TBLCARISB WHERE CARI_KODU = '" +GridView1.Rows[0].Cells[0].Text + "'";
            //SqlCommand _cmd = new SqlCommand(command, con);
            //var _rd = _cmd.ExecuteReader();
            //_rd.Read();
            //if (_rd.HasRows)
            //{

            //    TextBox2.Text = _rd.GetValue(1).ToString();
            //}


        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //GridViewRow row = GridView1.SelectedRow;
            //int index = GridView1.SelectedRow.RowIndex;
            //TextBox lblValuename = (TextBox)row.FindControl("TextBox1");
            //TextBox lblValueCountry = (TextBox)row.FindControl("TextBox2");
            //string message = "Row Index: " + index + "\\nName: " + lblValuename.Text + "\\nCountry: " + lblValueCountry.Text;
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);



            //string message = "Row Index: " + index + "\\nName: " + lblValuename.Text + "\\nCountry: " + lblValueCountry.Text;
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);

            var command = "SELECT * FROM TBLCARISB WHERE CARI_KODU = '" + TextBox1.Text +  "'";
            //var commandd = "SELECT * FROM TBLCARISB WHERE CARI_ADI = '" + GridView1.Rows[2].Cells[2].Text + "'";
            //var commanddd = "SELECT * FROM TBLCARISB WHERE CARI_KISA_ISIM = '" + GridView1.Rows[2].Cells[2].Text + "'";
            //var commandddd = "SELECT * FROM TBLCARISB WHERE CARI_IL = '" + GridView1.Rows[3].Cells[3].Text + "'";

            //GridView1.Rows[1].Cells[1].Text


            SqlCommand _cmd = new SqlCommand(command, con);
            var _rd = _cmd.ExecuteReader();
            _rd.Read();
            if (_rd.HasRows)
            {

                TextBox2.Text = _rd.GetValue(11).ToString();
                TextBox3.Text = _rd.GetValue(12).ToString();
                TextBox4.Text = _rd.GetValue(16).ToString();
                TextBox5.Text = _rd.GetValue(17).ToString();


            }

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            listeleme2();
        }
    }
}