using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _26DecNotes
{
    public partial class CreatePage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Initial Catalog=ASP; data source=DESKTOP-VE4FI26; Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

            con.Open();
            Response.Write(con.State.ToString());
            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string gender = "";
            string country = "";
            string hobbies = "";
            
            if(RadioButton1.Checked)
            {
                gender = "Male";
            }
            else if(RadioButton2.Checked)
            {
                gender = "Female";
            }

            country = DropDownList1.SelectedValue;

            hobbies += CheckBoxList1.SelectedValue+" ";
            
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Newnfo values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "', '" + gender + "' ,'" + country + "','" + hobbies + "')",con);
            int result = cmd.ExecuteNonQuery();
            if(result>0)
            {
                Response.Write("Inserted Successfully");
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Write("Unable to insert record");
            }
            con.Close();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

            TextBox6.Text = "Date of Birth " + Calendar1.SelectedDate.ToString("D");

           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int year = Calendar1.SelectedDate.Year ;

            //int x = int.Parse(TextBox6.Text);
            if (year >= 1990)
            {
                TextBox7.Text = "valid for vote";
            }
            else
            {
                TextBox7.Text = "not valid for vote";
            }


            //  if (TextBox6.Text.D >=DateTime.Now  &&)
        }
    }
}