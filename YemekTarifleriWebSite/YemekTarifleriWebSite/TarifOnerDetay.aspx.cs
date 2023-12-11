using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriWebSite
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        sqlbaglanti bgl = new sqlbaglanti();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["TarifID"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From TblTarifler Where TarifID = @p1", bgl.baglanti());

                komut.Parameters.AddWithValue("@p1", id);

                try
                {
                    SqlDataReader dr = komut.ExecuteReader();

                    while (dr.Read())
                    {
                        TextBox1.Text = dr[1].ToString();
                        TextBox2.Text = dr[2].ToString();
                        TextBox3.Text = dr[3].ToString();
                        TextBox4.Text = dr[5].ToString();
                        TextBox5.Text = dr[6].ToString();
                    }
                    bgl.baglanti().Close();
                }

                catch { }

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Durum Güncelleme
            SqlCommand komut2 = new SqlCommand("Update TblTarifler Set TarifDurum = 1 Where TarifID = @p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

            // Yemeği Ana Sayfaya Ekleme
            SqlCommand komut3 = new SqlCommand("Insert Into TblYemekler (YemekAd, YemekMalzeme, YemekTarif, KategoriID) Values (@p1, @p2, @p3, @p4)", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut3.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);

            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}