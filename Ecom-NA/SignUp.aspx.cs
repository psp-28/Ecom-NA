using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//This below extra needs to be added.
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Ecom_NA
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //    protected void btnSignup_Click(object sender, EventArgs e)
        //    {
        //        //SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=EcomNADB;Integrated Security=True");

        //        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomNADB"].ConnectionString); // name of the connectionstring need to be passed which we have mentioned in webconfig.

        //        con.Open();
        //        SqlCommand cmd = new SqlCommand("Insert into tblUsers(FullName, Email, Phone, Password) Values('" +txtName.Text + "','" + txtEmail.Text + "','" + txtPhone.Text + "','" + txtPassword.Text + "')",con);  // Squery to insert the values into sql database.
        //        cmd.ExecuteNonQuery();
        //        Response.Write("<script> alert('Registration successfully done'); </script>");
        //        con.Close();
        //    }
        //}


        protected void btnSignup_Click(object sender, EventArgs e)
        {
            string fullName = txtName.Text.Trim();
            string email = txtEmail.Text.Trim().ToLower();  // lowercase for comparison
            string phone = txtPhone.Text.Trim();
            string password = txtPassword.Text.Trim();
            //string ConfirmPassword = txtConfirmPassword.Text.Trim();

            if (string.IsNullOrEmpty(fullName) || string.IsNullOrEmpty(email)
               || string.IsNullOrEmpty(phone) || string.IsNullOrEmpty(password))
            {
                ShowAlert("Please fill all fields!");
                return;
            }

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomNADB"].ConnectionString))
            {
                con.Open();

                // Duplicate check (case-insensitive email)
                string checkQuery = "SELECT COUNT(*) FROM tblUsers WHERE LOWER(Email)=@Email OR Phone=@Phone";
                using (SqlCommand checkCmd = new SqlCommand(checkQuery, con))
                {
                    checkCmd.Parameters.AddWithValue("@Email", email);
                    checkCmd.Parameters.AddWithValue("@Phone", phone);

                    int userExists = (int)checkCmd.ExecuteScalar();
                    if (userExists > 0)
                    {
                        ShowAlert("User already exists with this email or phone number.");
                        return;
                    }
                }

                // Insert new user
                string insertQuery = "INSERT INTO tblUsers (FullName, Email, Phone, Password, Usertype) VALUES (@FullName, @Email, @Phone, @Password, @Usertype)";
                using (SqlCommand insertCmd = new SqlCommand(insertQuery, con))
                {
                    insertCmd.Parameters.AddWithValue("@FullName", fullName);
                    insertCmd.Parameters.AddWithValue("@Email", email);
                    insertCmd.Parameters.AddWithValue("@Phone", phone);
                    insertCmd.Parameters.AddWithValue("@Password", password); // hash this in production
                    insertCmd.Parameters.AddWithValue("@Usertype", "User");  // fixed role value, due to this if any user is registered, it will be added as user not as a Admin in database.

                    int rows = insertCmd.ExecuteNonQuery();
                    if (rows > 0)
                    {
                        //ShowAlert("Registration successfully done!");
                        ScriptManager.RegisterStartupScript(this, this.GetType(),"redirect", "alert('Registration successfully done!'); window.location='SignIn.aspx';", true);
                        Response.Redirect("SignIn.aspx");
                        //ClearForm();
                        //clr();

                    }
                    else
                    {
                        ShowAlert("Registration failed, please try again.");
                    }
                }
            }
        }

        // Helper method to show alert
        private void ShowAlert(string message)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('{message}');", true);
        }

        // Helper method to clear form
        private void ClearForm()
        {
            //txtName.Text = "";
            //txtEmail.Text = "";
            //txtPhone.Text = "";
            //txtPassword.Text = "";
            txtName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtConfirmPassword.Text = string.Empty;
        }



    }
}