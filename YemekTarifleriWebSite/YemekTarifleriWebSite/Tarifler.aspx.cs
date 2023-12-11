using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriWebSite
{
    public partial class Tarifler : System.Web.UI.Page
    {
        sqlbaglanti bgl = new sqlbaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            SqlCommand komut = new SqlCommand("Select * From TblTarifler Where TarifDurum = 0", bgl.baglanti());

            try
            {
                SqlDataReader dr = komut.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
            }
            catch { }

            SqlCommand komut1 = new SqlCommand("Select * From TblTarifler Where TarifDurum = 1", bgl.baglanti());

            try
            {
                SqlDataReader dr1 = komut1.ExecuteReader();
                DataList2.DataSource = dr1;
                DataList2.DataBind();
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}