﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriWebSite
{
    public partial class Iletisim : System.Web.UI.Page
    {
        sqlbaglanti bgl = new sqlbaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert Into TblMesajlar (MesajAdSoyad, MesajMail, MesajBaslik, MesajIcerik) Values (@p1, @p2, @p3, @p4)", bgl.baglanti());

            komut.Parameters.AddWithValue("@p1", TxtAdSoyad.Text);
            komut.Parameters.AddWithValue("@p2", TxtMail.Text);
            komut.Parameters.AddWithValue("@p3", TxtKonu.Text);
            komut.Parameters.AddWithValue("@p4", TxtMesaj.Text);

            komut.ExecuteNonQuery();

            bgl.baglanti().Close();      
        
        }
    }
}