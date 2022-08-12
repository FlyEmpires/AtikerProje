﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace atikerhakiki
{
    public partial class Besi : System.Web.UI.Page
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
            DataSet4TableAdapters.TBLBESISBTableAdapter dt = new DataSet4TableAdapters.TBLBESISBTableAdapter();
            dt.BesiEkle(TextBox1.Text, TextBox2.Text, TextBox3.Text,Convert.ToDateTime( TextBox4.Text),  Convert.ToDouble(TextBox5.Text));
            listeleme();

        }
        public void listeleme()
        {
            ds = new DataSet();
            cmd.CommandText = "select KUPE_NO, BESI_ADI, BESI_CINSI,DOGUM_TARIHI,DOGUM_KG from TBLBESISB";
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
            cmd.CommandText = "Delete from TBLBESISB where KUPE_NO='" + TextBox6.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Update TBLBESISB set BESI_ADI='" + TextBox2.Text.ToString() + "',BESI_CINSI='" + TextBox3.Text.ToString() + "',DOGUM_TARIHI='" + TextBox4.Text.ToString() + "',DOGUM_KG='" + TextBox5.Text.ToString() + "' where KUPE_NO='" + TextBox1.Text.ToString() + "' ";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();

        }
    }
}