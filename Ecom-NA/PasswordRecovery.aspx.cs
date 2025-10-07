using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// We will add some of the required packages.
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Ecom_NA
{
    public partial class PasswordRecovery : System.Web.UI.Page
    {
        String GUIDvalue;
        DataTable dt = new DataTable();   // initializing globally.
        int Uid;

        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomNADB"].ConnectionString))
            {

                //con.Open();
                GUIDvalue = Request.QueryString["id"];         
                if (GUIDvalue != null)
                {
                    SqlCommand cmd = new SqlCommand("Select * from ForgetPass where Id=@Id", con);        // ForgetPass is our table in DB.
                    con.Open();
                    cmd.Parameters.AddWithValue("ID", GUIDvalue);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    //DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0) {
                        Uid = Convert.ToInt32(dt.Rows[0][1]);       //To fetch Uid.
                    }
                    else
                    {
                        lblmsg.Text = "Your Password reset link is Expired or Invalid... Please try again.";
                        lblmsg.ForeColor = System.Drawing.Color.Red;

                    }
                }
                else
                {
                    Response.Redirect("~/Default.aspx");
                }

            }
            if(!IsPostBack)
            {
                if(dt.Rows.Count!=0)
                {
                    txtNewPassword.Visible = true;          // We have set the visible = false in the aspx, so that if anyone go directly through url then it will not show the txtbox and submit button, they need to go through email link.
                    txtConPassword.Visible = true;
                    btnRecoverPassword.Visible = true;
                }
                else
                {
                    lblmsg.Text = "Your Password reset link is Expired or Invalid... Please try again.";
                    lblmsg.ForeColor=System.Drawing.Color.Red;
                }
            }
        }

        protected void btnRecoverPassword_Click(object sender, EventArgs e)     // Here we will click on submit button and the password will be replaced with new password.
        {
            if (txtNewPassword.Text !="" && txtConPassword.Text != "" &&txtNewPassword.Text == txtConPassword.Text)
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomNADB"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("update tblUsers set Password=@p where Uid=@Uid", con);
                    cmd.Parameters.AddWithValue("@p", txtNewPassword.Text);
                    cmd.Parameters.AddWithValue("@Uid", Uid);
                    cmd.ExecuteNonQuery();


                    // below code is optional, if you want to delete the entry from ForgetPass table after. resetting the password. 
                    //SqlCommand cmd2 = new SqlCommand("delete from ForgetPass where Uid='"+ Uid +"'", con);
                    //cmd2.ExecuteNonQuery();

                    Response.Write("<script> alert('Password Reset Successful'); </script>");


                }
            }

        }
    }
}