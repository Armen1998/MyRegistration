using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace MyRegistration
{
    public class Insert
    {
        
        public static void insert(TextBox t1, TextBox t2, ListBox l1, ListBox l2, ListBox l3)
        {
            MyregClassDataContext myregclass = new MyregClassDataContext();
            Myregistre myreg = new Myregistre();
            WebSite ws = new WebSite();
            myreg.Name = t1.Text;
            myreg.Surname = t2.Text;
            myreg.Matlab = Convert.ToInt32(l1.Text);
            myreg.Kirmex = Convert.ToInt32(l2.Text);
            myreg.MathAnaliz = Convert.ToInt32(l3.Text);
            myregclass.Myregistres.InsertOnSubmit(myreg);
            myregclass.SubmitChanges();
            
        }
    }
}