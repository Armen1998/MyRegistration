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
        RadioButton radb1, radb2, radb3;
        GridView grid = new GridView();
        // ShowSortedData shsortdata = new ShowSortedData();
        MyregClassDataContext myregdata = new MyregClassDataContext();
        Myregistre myreg = new Myregistre();
        public ClassForSort(RadioButton radb1,RadioButton radb2,RadioButton radb3)
        {
            this.radb1 = radb1;
            this.radb2 = radb2;
            this.radb3 = radb3;
        }
        public ClassForSort(GridView gridforshowsortdata)
        {
            grid = gridforshowsortdata;
        }
        public RadioButton IsChecked()
        {
            RadioButton radio = new RadioButton();
            if (radb1.Checked == true) radio = radb1;
            else if (radb2.Checked == true) radio = radb2;
            else if (radb3.Checked == true) radio = radb3;
            return radio;
        }
        public void Sort()
        {
            if (IsChecked() == radb1) SortByKirmex();
            if (IsChecked() == radb2) SortByMatanal();
            if (IsChecked() == radb3) SortByMatlab();
                        
        }
        public void SortByKirmex()
        {
            var data = from a in myregdata.Myregistres
                       orderby a.Kirmex, a.Name, a.Surname descending                      
                       select a.Kirmex;           
            grid.DataSource = data;
            grid.DataBind();
            grid.Visible = true;
        }
        public void SortByMatlab()
        {
            var data = from a in myregdata.Myregistres
                       orderby a.Matlab, a.Name, a.Surname descending
                       select a;
            grid.DataSource = data;
            grid.DataBind();
        }
        public void SortByMatanal()
        {
            var data = from a in myregdata.Myregistres
                       orderby a.MathAnaliz, a.Name, a.Surname descending
                       select a;
            grid.DataSource = data;
            grid.DataBind();
        }
    }
}