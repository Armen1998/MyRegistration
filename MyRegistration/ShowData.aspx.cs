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
        //  SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
       
        
        protected void Page_Load(object sender, EventArgs e)
        {
            radio_btn_kirmex.Visible = false;
         // radio_btn_kirmex.Checked = true;
            radio_btn_matanal.Visible = false;
            radio_btn_matlab.Visible = false;
            btn_selectforsort.Visible = false;

        }
       
        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebSite.aspx");
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx");
        }

        protected void btn_sort_Click_Click(object sender, EventArgs e)
        {
            radio_btn_kirmex.Visible = true;
            radio_btn_matanal.Visible = true;
            radio_btn_matlab.Visible = true;
            btn_selectforsort.Visible = true;
        }
       

        protected void btn_selectforsort_Click(object sender, EventArgs e)
        {
            
            
            if (radio_btn_kirmex.Checked == true) DataSort.a = 1;
            else if (radio_btn_matanal.Checked == true) DataSort.a = 2;
            else if (radio_btn_matlab.Checked == true) DataSort.a = 3;
            //NumberChecked();
            Response.Redirect("DataSort.aspx");
        }
    }
}