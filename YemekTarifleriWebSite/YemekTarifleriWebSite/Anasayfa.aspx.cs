﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriWebSite
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        sqlbaglanti bgl = new sqlbaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From TblYemekler", bgl.baglanti());

            try
            {
                SqlDataReader dr = komut.ExecuteReader();
                DataList2.DataSource = dr;
                DataList2.DataBind();
            }
            catch { }
        }
    }
}