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
        public void listeleme2()
        {
            ds = new DataSet();
            cmd.CommandText = "select BAYI_KODU, BAYI_GELIR, BAYI_GIDER,BAYI_ACIKLAMA,BAYI_TELEFON from TBLBAYIHR where BAYI_KODU='" + TextBox8.Text.ToString() + "'";
            cmd.Connection = con;
            adp = new SqlDataAdapter(cmd);
            adp.Fill(ds);
            cmd.ExecuteNonQuery();
            GridView2.DataSource = ds;
            GridView2.DataBind();

            con.Close();
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
            cmd.CommandText = "Delete from TBLCRM_BAYISB where BAYI_KODU='" + TextBox1.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            listeleme();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Update TBLCRM_BAYISB set BAYI_ISIM='" + TextBox2.Text.ToString() + "',FIRMA_ADI='" + TextBox3.Text.ToString() + "',VERGI_NO='" + TextBox4.Text.ToString() + "',BAYI_YETKILI='" + TextBox5.Text.ToString() + "' where BAYI_KODU='" + TextBox1.Text.ToString() + "' ";
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
            var command = "SELECT * FROM TBLCRM_BAYISB WHERE BAYI_KODU = '" + TextBox1.Text + "'";

            SqlCommand _cmd = new SqlCommand(command, con);
            var _rd = _cmd.ExecuteReader();
            _rd.Read();
            if (_rd.HasRows)
            {

                TextBox2.Text = _rd.GetValue(11).ToString();
                TextBox3.Text = _rd.GetValue(25).ToString();
                TextBox4.Text = _rd.GetValue(31).ToString();
                TextBox5.Text = _rd.GetValue(12).ToString();


            }
        }
    }
}