using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriWebSite
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlbaglanti bgl = new sqlbaglanti();
        string kategoriid = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["KategoriID"];

            SqlCommand komut = new SqlCommand("Select * From TblYemekler Where KategoriID = @p1", bgl.baglanti());

            komut.Parameters.AddWithValue("@p1", kategoriid);

            try
            {
                SqlDataReader dr = komut.ExecuteReader();
                DataList2.DataSource = dr;
                DataList2.DataBind();

                bgl.baglanti().Close();
            }
            catch { }
        }
    }
}