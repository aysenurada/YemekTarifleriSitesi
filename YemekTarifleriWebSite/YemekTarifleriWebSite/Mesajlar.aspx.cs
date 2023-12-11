using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriWebSite
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        sqlbaglanti bgl = new sqlbaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;

            SqlCommand komut = new SqlCommand("Select * From TblMesajlar", bgl.baglanti());

            try
            {
                SqlDataReader dr = komut.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
            }
            catch { }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}