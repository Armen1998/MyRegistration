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
    public partial class WebSite : System.Web.UI.Page
    {
        //SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        //public string Text_Name { get { return txtbox_Name.Text; } set { txtbox_Name.Text = value; } }
        //public string Text_Surname { get { return txtbox_Surname.Text; } set { txtbox_Surname.Text = value; } }
        //public string Text_Kirmex { get { return listbox_kirmex.Text; } set { listbox_kirmex.Text = value; } }
        //public string Text_Matlab { get { return listbox_matlab.Text; } set { listbox_matlab.Text = value; } }
        //public string Text_Matanal { get { return listbox_matanal.Text; } set { listbox_matanal.Text = value; } }

        protected void Page_Load(object sender, EventArgs e)
        {
            MyRegistration.AddItems.Additems(listbox_kirmex, listbox_matanal, listbox_matlab);
            
        }
       
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            if (txtbox_Name.Text != "" && txtbox_Surname.Text != "")
            {
                //sqlcon.Open();
                //SqlCommand cmd = new SqlCommand("insert into Myregistre values('" + txtbox_Name.Text + "','" + txtbox_Surname.Text + "','" + listbox_matanal.Text + "','" + listbox_matlab.Text + "','" + listbox_kirmex.Text + "')", sqlcon);
                //cmd.ExecuteNonQuery();
                //sqlcon.Close();
                //Response.Write("Registration was succesfuul");
                //Reset();
                Insert.insert(txtbox_Name,txtbox_Surname,listbox_matlab,listbox_kirmex,listbox_matanal);
                Response.Write("Registration was succesfuul");
                Reset.reset(txtbox_Name, txtbox_Surname, listbox_matlab, listbox_kirmex, listbox_matanal);
            }
            else Response.Write("Name and Surname are required");
        }

        protected void btn_showdata_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowData.aspx");
            
        }
    }
}