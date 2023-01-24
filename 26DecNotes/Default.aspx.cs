using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _26DecNotes
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            con.Open();
            Response.Write(con.State.ToString());
            con.Close();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a = int.Parse(TextBox1.Text);
            int b = int.Parse(TextBox2.Text);
            int c = a + b;

            
            Response.Write(c.ToString());
        }
        SqlConnection con = new SqlConnection("Initial Catalog=ASP; data source=DESKTOP-VE4FI26; Integrated Security=true");

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Newnfo where UserId = '" + TextBox3.Text + "' and UPassword = '" + TextBox4.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Response.Redirect("Page2.aspx");   
            }
            else
            {
                Response.Write("Invalid UserId UserPassword");
            }
            con.Close();

            //if(TextBox3.Text=="Seraj@gmail.Com" && TextBox4.Text=="Seraj")
            //{

            //    Response.Redirect("Page2.aspx");
            //}
            //else
            //{
            //    Label3.Text = "Invalid UserId and Password";
            //}
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreatePage.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Page4.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Page2.aspx?firstname="+TextBox5.Text+"&lastname="+TextBox6.Text);



          //  Response.Redirect("default2.aspx ?firstname=" + TextBox1.Text + "&lastname=" + TextBox2.Text);
        }
    }
}