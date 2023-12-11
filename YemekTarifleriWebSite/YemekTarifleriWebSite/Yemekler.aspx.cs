using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriWebSite
{
    public partial class Yemekler : System.Web.UI.Page
    {
        sqlbaglanti bgl = new sqlbaglanti();
        string islem = "";
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel5.Visible = false;

            if (Page.IsPostBack == false)
            {

                id = Request.QueryString["YemekID"];
                islem = Request.QueryString["Islem"];

                // Kategori Listesi
                SqlCommand komut = new SqlCommand("Select * From TblKategoriler", bgl.baglanti());

                try
                {
                    SqlDataReader dr1 = komut.ExecuteReader();

                    // Kullanıcıya gözüken kısım
                    DropDownList1.DataTextField = "KategoriAd";
                    // Arka tarafta işleme alınan kısım
                    DropDownList1.DataValueField = "KategoriID";

                    DropDownList1.DataSource = dr1;
                    DropDownList1.DataBind();
                }
                catch { }
            }

            // Yemek Listesi
            SqlCommand cmd = new SqlCommand("Select * From TblYemekler", bgl.baglanti());

            try
            {
                SqlDataReader dr = cmd.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
            }
            catch { }
            
            if (islem == "sil")
            {
                SqlCommand komut1 = new SqlCommand("Delete From TblYemekler Where YemekID = @p1", bgl.baglanti());

                komut1.Parameters.AddWithValue("@p1", id);
                komut1.ExecuteNonQuery();

                bgl.baglanti().Close();
            }
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
            // Yemek Ekleme
            SqlCommand komut1 = new SqlCommand("Insert Into TblYemekler (YemekAd, YemekMalzeme, YemekTarif, KategoriID) Values (@p1, @p2, @p3, @p4)", bgl.baglanti());

            komut1.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut1.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut1.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut1.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);

            komut1.ExecuteNonQuery();

            bgl.baglanti().Close();

            // Kategori Sayısını Arttırma
            SqlCommand komut2 = new SqlCommand("Update TblKategoriler Set KategoriAdet = KategoriAdet+1 Where KategoriID = @p1", bgl.baglanti());

            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);

            komut2.ExecuteNonQuery();

            bgl.baglanti().Close();

        }
    }
}