using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
// We will add some of our required libraries...
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;


namespace Ecom_NA
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // in beloe function I have mentioned the code to store the user session in the form of cookies in the browser. Here at the time of page loading we will check the stored session everytime.


            if (!IsPostBack)
            {
                if (Request.Cookies["UNAME"]!= null && Request.Cookies["UPWD"]!= null)     // We are requesting for the cookies which has the username and password for the session stored.
                {
                    txtEmail.Text = Request.Cookies["UNAME"].Value;
                    txtPassword.Text = Request.Cookies["UPWD"].Value;
                    Rememberme.Checked = true;
                }
            }
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //    if (isformvalid())
            //    {

            //        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomNADB"].ConnectionString))
            //        {
            //            con.Open();
            //            SqlCommand cmd = new SqlCommand("Insert into tblUsers(FullName, Email, Phone, Password) Values('" + txtName.Text + "','" + txtEmail.Text + "','" + txtPhone.Text + "','" + txtPassword.Text + "')", con);
            //            cmd.ExecuteNonQuery();

            //            Response.Write("<script> alert('registration Successfully done'); </script>");
            //            clr();
            //            con.Close();


            //        }
            //        Response.Redirect("~/SignIn.aspx");
            //    }
            //    else
            //    {
            //        Response.Write("<script> alert('Registration failed'); </script>");

            //    }



            //}

            //private void clr()
            //{
            //    //txtName.Text = "";
            //    //txtEmail.Text = "";
            //    //txtPhone.Text = "";
            //    //txtPassword.Text = "";
            //    txtName.Text = string.Empty;
            //    txtEmail.Text = string.Empty;
            //    txtPhone.Text = string.Empty;
            //    txtPassword.Text = string.Empty;
            //    txtConfirmPassword.Text = string.Empty;
            //}


            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomNADB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM tblUsers WHERE Email=@Email AND Password=@Password", con);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                //cmd.ExecuteNonQuery(); // We will not write NonQuery as we are not inserting hence we are selecting the data from database, instead we will create sqlDataAdapter to fetch data.
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                // We will create a object of datatable.
                DataTable dt = new DataTable();
                sda.Fill(dt);           // we will fill the record in the datatable.


                if (dt.Rows.Count != 0)
                {


                    // We will store the user login session is, if the checkbox of rememberme is checked in the form of cookies in the browser.
                    if(Rememberme.Checked)
                    {
                        // will be setting the value of username and password in the cookies. And also will mention the time duration that it will stored for the particular time.
                        Response.Cookies["UNAME"].Value = txtEmail.Text;
                        Response.Cookies["UPWD"].Value = txtPassword.Text;

                        //Time duration that the user session will be valid. Like username and password will be saved as cookies for 5 days.

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(5);
                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(5);
                    }
                    else
                    {
                        // if the checkbox is not checked for remember me so it will move to else block. So it will not store for the single day.


                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);
                    }




                        // I wanna fetch the username from the database, which is named as txtName in aspx and FullName in DB.
                        // Fetch FullName from DB
                        string fullName = dt.Rows[0]["FullName"].ToString();

                    // Store in Session
                    //Session["Username"] = fullName;           
                    //Response.Redirect("~/UserHomePage.aspx");


                    //Session["Useremail"] = dt.Rows[0]["Email"].ToString();




                   // In the below code, when the user will login then the session will direct to UserHomePage.aspx and when the login is attempted with Admin account then it will redirect to AdminHome.aspx

                    string Utype;   // Creating a variable named as Usertype (for multiuser - Usertype (Admin or User), always there will be User not a admin. As Admin is already created at initial).
                    Utype = dt.Rows[0]["Usertype"].ToString().Trim();          //as the Usertype column is at [0][5] position in DB.

                    if(Utype == "User")
                    {
                        // Store in Session
                        Session["Username"] = fullName;         
                        Response.Redirect("~/UserHomePage.aspx");

                    }
                    if (Utype == "Admin")
                    {
                        // Store in Session
                        Session["Username"] = fullName;
                        Response.Redirect("~/AdminHome.aspx");

                    }

                }
                else
                {
                    lblError.Text = "Invalid Email or Password! Please try again.";
                }



                    //if (dt.Rows.Count > 0)
                    //{
                    //    //Login success
                    //    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Login Successful!'); window.location='UserHomePage.aspx';", true);
                    //}
                    //else
                    //{
                    //    //  Login failed
                    //    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Invalid Email or Password! Please try again.');", true);
                    //}

                    //Response.Write("<script> alert('Login Successful'); </script>");
                    clr();
                con.Close();


            }
        }

        private void clr()
        {
            txtPassword.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtEmail.Focus();
        }
    }
}



// I will create a user session object.
//Session["Username"] = txtName.Text;