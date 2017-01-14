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
    public class Reset
    {
        
        public static void reset(TextBox t1, TextBox t2, ListBox l1, ListBox l2, ListBox l3)
        {
            t1.Text = "";
            t2.Text = "";
            l1.Text = "1";
            l2.Text = "1";
            l3.Text = "1";
        }
    }
}