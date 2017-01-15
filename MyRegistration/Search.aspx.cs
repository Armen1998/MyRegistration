using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace MyRegistration
{
    public partial class Search : System.Web.UI.Page
    {
        //SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewSearch.Visible = false;
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {

            //sqlcon.Open();
            //string query = "Select * from Myregistre where Name='"+txt_fname_search.Text+"' and Surname='"+txt_lname_search.Text+"'";
            //SqlCommand sqlcom = new SqlCommand(query, sqlcon);
            //GridViewSearch.DataSource = sqlcom.ExecuteReader();
            //GridViewSearch.DataBind();
            MyregClassDataContext myrcsc = new MyregClassDataContext();
            // Myregistre myreg = new Myregistre();
            GridViewSearch.DataSource = from a in myrcsc.Myregistres
                       where a.Name == txt_fname_search.Text && a.Surname == txt_lname_search.Text 
                       orderby a.Kirmex descending
                       select new { a.Name,a.Surname,a.Kirmex,a.MathAnaliz,a.Matlab } ;
    
            GridViewSearch.DataBind();
            GridViewSearch.Visible = true; 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowData.aspx");
        }
    }
}