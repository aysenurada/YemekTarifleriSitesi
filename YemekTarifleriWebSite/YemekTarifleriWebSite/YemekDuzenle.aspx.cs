using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriWebSite
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlbaglanti bgl = new sqlbaglanti();
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekID"];

            if (Page.IsPostBack == false )
            {
                SqlCommand komut = new SqlCommand("Select * From TblYemekler Where YemekID = @p1", bgl.baglanti());

                komut.Parameters.AddWithValue("@p1", id);

                try
                {
                    SqlDataReader dr = komut.ExecuteReader();

                    while (dr.Read())
                    {
                        TextBox1.Text = dr[1].ToString();
                        TextBox2.Text = dr[2].ToString();
                        TextBox3.Text = dr[3].ToString();
                    }

                    bgl.baglanti().Close();
                }
                catch { }

                if (Page.IsPostBack == false)
                {
                    // Kategori Listesi
                    SqlCommand komut1 = new SqlCommand("Select * From TblKategoriler", bgl.baglanti());

                    try
                    {
                        SqlDataReader dr1 = komut1.ExecuteReader();

                        // Kullanıcıya gözüken kısım
                        DropDownList1.DataTextField = "KategoriAd";
                        // Arka tarafta işleme alınan kısım
                        DropDownList1.DataValueField = "KategoriID";

                        DropDownList1.DataSource = dr1;
                        DropDownList1.DataBind();
                    }
                    catch { }
                }
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Resimler/" + FileUpload1.FileName));

            SqlCommand komut2 = new SqlCommand("Update TblYemekler Set YemekAd = @p1, YemekMalzeme = @p2, YemekTarif = @p3, KategoriID = @p4, YemekResim = @p6 Where YemekID = @p5", bgl.baglanti());

            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut2.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut2.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.Parameters.AddWithValue("@p5", id);
            komut2.Parameters.AddWithValue("@p6", "~/Resimler/" + FileUpload1.FileName);

            komut2.ExecuteNonQuery();

            bgl.baglanti().Close();
        }

        protected void BtnGununYemegi_Click(object sender, EventArgs e)
        {
            // Tüm yemekler Durum = False oldu
            SqlCommand komut3 = new SqlCommand("Update TblYemekler Set Durum = 0", bgl.baglanti());
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();

            // Günün yemeği için ID'ye göre Durum = True yapan kod
            SqlCommand komut4 = new SqlCommand("Update TblYemekler Set Durum = 1 Where YemekID = @p1", bgl.baglanti());
            komut4.Parameters.AddWithValue("@p1", id);
            komut4.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}