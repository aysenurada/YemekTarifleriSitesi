using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriWebSite
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlbaglanti bgl = new sqlbaglanti();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumID"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select YorumAdSoyad, YorumMail, YorumIcerik, YemekAd From TblYorumlar Inner Join TblYemekler On TblYorumlar.YemekID = TblYemekler.YemekID Where YorumID = @p1", bgl.baglanti());

                komut.Parameters.AddWithValue("@p1", id);

                try
                {
                    SqlDataReader dr = komut.ExecuteReader();

                    while (dr.Read())
                    {
                        TxtAd.Text = dr[0].ToString();
                        TxtMail.Text = dr[1].ToString();
                        TxtIcerik.Text = dr[2].ToString();
                        TxtYemek.Text = dr[3].ToString();

                    }
                    bgl.baglanti().Close();
                }
                catch { }
            }
        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut1 = new SqlCommand("Update TblYorumlar Set YorumIcerik = @p1, YorumOnay = @p2 Where YorumID = @p3", bgl.baglanti());

            komut1.Parameters.AddWithValue("@p1", TxtIcerik.Text);
            komut1.Parameters.AddWithValue("@p2", "True");
            komut1.Parameters.AddWithValue("@p3", id);

            komut1.ExecuteNonQuery();

            bgl.baglanti().Close();

        }
    }
}