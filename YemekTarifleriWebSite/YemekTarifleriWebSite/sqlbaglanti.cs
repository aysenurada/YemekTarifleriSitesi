using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifleriWebSite
{
    public class sqlbaglanti
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-IDTQGS1;Initial Catalog=DbYemekTarifi;Integrated Security=True");
            try
            {
                baglan.Open();
            }
            catch { }

            return baglan;
        }
    }
}