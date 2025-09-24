using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecom_NA
{
    public partial class UserHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)        // if we found the username then we will continue to the site, else we will redirect to signin page.
            {
                string name = Session["UserName"].ToString();
                lblSuccess.Text = "Login Successful, Welcome " + " " +name;
            }
            else
            {
                Response.Redirect("~/SignIn.aspx");
            }
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            //Session.Abandon();
            Session["Username"] = null;
            Response.Redirect("~/Default.aspx");

        }
    }
}