using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriWebSite
{
    public partial class kullanici : System.Web.UI.MasterPage
    {
        sqlbaglanti bgl = new sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From TblKategoriler", bgl.baglanti());

            try
            {
                SqlDataReader oku = komut.ExecuteReader();
                DataList1.DataSource = oku;
                DataList1.DataBind();
            }
            catch { }
        }
    }
}