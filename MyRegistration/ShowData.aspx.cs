using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;
using System.Data;

namespace MyRegistration
{
    public partial class ShowData : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebSite.aspx");
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx");
        }

        protected void btn_sort_Click(object sender, EventArgs e)
        {
            
        }
    }
}