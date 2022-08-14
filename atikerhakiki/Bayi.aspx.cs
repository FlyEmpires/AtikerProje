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
    public partial class Bayi : System.Web.UI.Page
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
            DataSet3TableAdapters.TBLCRM_BAYISBTableAdapter dt = new DataSet3TableAdapters.TBLCRM_BAYISBTableAdapter();
            dt.BayiEkle(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text);
            listeleme();
        }
        public void listeleme()
        {
            ds = new DataSet();
            cmd.CommandText = "select BAYI_KODU, BAYI_ISIM, FIRMA_ADI,VERGI_NO,BAYI_YETKILI from TBLCRM_BAYISB";
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
            cmd.CommandText = "Delete from TBLCRM_BAYISB where BAYI_KODU='" + TextBox6.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Update TBLCRM_BAYISB set BAYI_ISIM='" + TextBox2.Text.ToString() + "',FIRMA_ADI='" + TextBox3.Text.ToString() + "',VERGI_NO='" + TextBox4.Text.ToString() + "',BAYI_YETKILI='" + TextBox5.Text.ToString() + "' where BAYI_KODU='" + TextBox7.Text.ToString() + "' ";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();
        }
    }
}