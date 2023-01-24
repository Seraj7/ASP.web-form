using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _26DecNotes
{
    public partial class Page2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Initial Catalog=ASP; data source=DESKTOP-VE4FI26; Integrated Security=true");

        public void select()
        {
            SqlCommand cmd = new SqlCommand("select * from  Newnfo", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();

            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //***************************************************************************************
            //string firstname = Request.QueryString["firstname"];
            //string lastname = Request.QueryString["lastname"];
            //Label10.Text = "welcome " + firstname + " " + lastname;
            //Response.Write(Request.QueryString["firstname"]+"<br>"+Request.QueryString["lastname"]);



            //***************************************************************************************

            Label1.Text = "Welcome";

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from  Newnfo where Country = '"+TextBox7.Text+"'", con);
           // SqlCommand cmd = new SqlCommand("select * from  Newnfo where Country = India" , con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                TextBox1.Text = dr[0].ToString();
                TextBox2.Text = dr[1].ToString();
                TextBox3.Text = dr[2].ToString();
                TextBox4.Text = dr[3].ToString();
                TextBox5.Text = dr[4].ToString();
                TextBox6.Text = dr[5].ToString();
            }
            con.Close();
            select();


            //SqlCommand cmd = new SqlCommand("select * from  Newnfo", con);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();

            //da.Fill(ds);
            //GridView1.DataSource = ds.Tables[0];
            //GridView1.DataBind();
            
            

            //  int result = cmd.ExecuteNonQuery();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update  Newnfo set  UserName = '" + TextBox1.Text + "', UserId = '" + TextBox2.Text + "', Address = '" + TextBox3.Text + "', Gender = '" + TextBox4.Text + "', Country = '" + TextBox5.Text + "', Hobbies = '" + TextBox6.Text + "' where  UserId = '" + TextBox2.Text + "'", con);
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Write("Updated Successfully");
            }
            else
            {
                Response.Write("Unable to Update");
            }
          
            con.Close();
            select();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from Newnfo where UserId = '" + TextBox2.Text + "'", con);
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Write("deleted successfully");
            }
            else
            {
                Response.Write("unable to delete");
            }
    
            con.Close();
            select();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //con.Open();
            //SqlCommand cmd=new SqlCommand ("insert into Newnfo values ")
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            con.Open();
            select();
            con.Close();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
          // ( firstname = " + TextBox8.Text + " & " Lastname = " + TextBox9.Text + ");
        }
        //string firstname = "";
        //string Lastname = "";
    }
}