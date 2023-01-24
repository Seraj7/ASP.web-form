using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _26DecNotes
{
    public partial class Page6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ValidateBtn_OnClick(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                Label9.Text = "Page is valid.";
                Response.Redirect("Page7.aspx");

            }

            else
            {

                Label9.Text = "Page is not valid!";

            }

            //Response.Redirect("Page5.aspx");
        }

      

      

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

            int value = int.Parse(args.Value);
            if (value % 2 == 0)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}