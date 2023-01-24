using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _26DecNotes
{
    public partial class Page4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {

                FileUpload1.SaveAs(@"C:\Users\dell\Desktop\upload" + FileUpload1.FileName);
                Label1.Text = "File Uploaded: " + FileUpload1.FileName;
            }
            else
            {
                Label1.Text = "No File Uploaded.";
            }
        }
    }
}