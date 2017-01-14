using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyRegistration
{
    public class AddItems
    {
        public static void Additems(ListBox list1,ListBox list2,ListBox list3)
        {
            for (int i = 1; i <= 100; i++)
            {
                list1.Items.Add(i.ToString());
                list2.Items.Add(i.ToString());
                list3.Items.Add(i.ToString());
            }
        }
       
    }
}