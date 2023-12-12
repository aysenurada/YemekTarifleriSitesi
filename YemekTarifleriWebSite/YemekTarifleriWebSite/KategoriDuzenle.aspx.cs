using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriWebSite
{

    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlbaglanti bgl = new sqlbaglanti();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["KategoriID"];

            if (Page.IsPostBack == false)
            {

                SqlCommand komut = new SqlCommand("Select * From TblKategoriler Where KategoriID = @p1", bgl.baglanti());

                komut.Parameters.AddWithValue("@p1", id);

                try
                {
                    SqlDataReader dr = komut.ExecuteReader();

                    while (dr.Read())
                    {
                        TextBox1.Text = dr[1].ToString();
                    }

                    bgl.baglanti().Close();
                }
                catch { }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Resimler/" + FileUpload1.FileName));

            SqlCommand cmd = new SqlCommand("Update TblKategoriler Set KategoriAd= @p1, KategoriResim = @p2 Where KategoriID = @p3", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", "~/Resimler/" + FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@p3", id);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}