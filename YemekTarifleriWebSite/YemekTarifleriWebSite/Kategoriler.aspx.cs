﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriWebSite
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        sqlbaglanti bgl = new sqlbaglanti();
        string id = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
             if (Page.IsPostBack == false)
            {
                id = Request.QueryString["KategoriID"];
                islem = Request.QueryString["islem"];
            }

            SqlCommand cmd = new SqlCommand("Select * From TblKategoriler", bgl.baglanti());

            try
            {
                SqlDataReader dr = cmd.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
            }
            catch { }

            // Silme İşlemi
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete From TblKategoriler Where KategoriID = @p1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }

            Panel2.Visible = false;
            Panel5.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert Into TblKategoriler (KategoriAd) Values (@p1)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}