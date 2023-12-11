using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriWebSite
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        sqlbaglanti bgl = new sqlbaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From TblHakkimizda", bgl.baglanti());

                try
                {
                    SqlDataReader dr = komut.ExecuteReader();

                    while (dr.Read())
                    {
                        TextBox1.Text = dr[0].ToString();
                    }
                    bgl.baglanti().Close();
                }
                catch { }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut1 = new SqlCommand("Update TblHakkimizda Set Metin = @p1", bgl.baglanti());

            komut1.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut1.ExecuteNonQuery();

            bgl.baglanti().Close();
        }
    }
}