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
    public partial class DataSort : System.Web.UI.Page
    {
        ClassForSort forsort = new ClassForSort();
        ShowData shd = new ShowData();
        public static int a = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (a == 1) forsort.SortByKirmex(ref GridViewDataSort);
            else if (a == 2) forsort.SortByMatanal(ref GridViewDataSort);
            else if (a == 3) forsort.SortByMatlab(ref GridViewDataSort);       
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowData.aspx");
        }
    }
}