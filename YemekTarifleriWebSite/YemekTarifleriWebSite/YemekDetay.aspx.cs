using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriWebSite
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlbaglanti bgl = new sqlbaglanti();
        string yemekid = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["YemekID"];

            SqlCommand komut = new SqlCommand("Select YemekAd From TblYemekler Where YemekID=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
            try
            {
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    Label4.Text = dr[0].ToString();
                }

                bgl.baglanti().Close();
            }
            catch { }

            // Yemeğe Ait Yorumları Listeleme
            SqlCommand komut2 = new SqlCommand("Select * From TblYorumlar Where YemekID=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekid);

            try
            {
                SqlDataReader dr2 = komut2.ExecuteReader();
                DataList2.DataSource = dr2;
                DataList2.DataBind();

                bgl.baglanti().Close();
            }
            catch { }
        }

        protected void BtnYorumYap_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert Into TblYorumlar (YorumAdSoyad, YorumMail, YorumIcerik, YemekID) Values (@p1, @p2, @p3, @p4)", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p4", yemekid);

            cmd.ExecuteNonQuery();

            bgl.baglanti().Close();
        }
    }
}