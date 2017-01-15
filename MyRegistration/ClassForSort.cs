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
    public class ClassForSort
    {
        
        MyregClassDataContext myregdata = new MyregClassDataContext();
        Myregistre myreg = new Myregistre();
        
      
        public ClassForSort()
        {

        }
        
        public void SortByKirmex(ref GridView grid)
        {
            var data = from a in myregdata.Myregistres
                       orderby a.Kirmex descending               
                       select new { a.Name, a.Surname, a.Kirmex, a.Matlab, a.MathAnaliz };
            grid.DataSource = data;
            grid.DataBind();
           
        }
        public void SortByMatlab(ref GridView grid)
        {
            var data = from a in myregdata.Myregistres
                       orderby a.Matlab descending
                       select new { a.Name, a.Surname,  a.Matlab, a.Kirmex, a.MathAnaliz };
            grid.DataSource = data;
            grid.DataBind();
        }
        public void SortByMatanal(ref GridView grid)
        {
            var data = from a in myregdata.Myregistres
                       orderby a.MathAnaliz descending
                       select new { a.Name, a.Surname, a.MathAnaliz, a.Matlab, a.Kirmex  };
            grid.DataSource = data;
            grid.DataBind();
        }
    }
}