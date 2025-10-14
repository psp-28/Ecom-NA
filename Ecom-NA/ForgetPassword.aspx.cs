using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// We will add some of the required libraries.
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net.Mail;   // This is used for sending the email or SMTP protocols.
using System.Net;

namespace Ecom_NA
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResetPassword_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomNADB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM tblUsers WHERE Email=@Email", con);
                //cmd.Parameters.Clear();

                cmd.Parameters.AddWithValue("@Email", txtEmailID.Text);
                
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                // We will create a object of datatable.
                DataTable dt = new DataTable();
                sda.Fill(dt);           // we will fill the record in the datatable.

                if (dt.Rows.Count != 0)
                {
                    String myGUID = Guid.NewGuid().ToString();
                    int Uid = Convert.ToInt32(dt.Rows[0][0]);
                    SqlCommand cmd1 = new SqlCommand("Insert into ForgetPass(Id, Uid,RequestDateTime) values('" + myGUID + "','" + Uid + "',GETDATE())", con);
                    cmd1.ExecuteNonQuery();



                    // Send Email for the Reset password:

                    String ToEmailAddress = dt.Rows[0][2].ToString();
                    String Username = dt.Rows[0][1].ToString();
                    string EmailBody =
                                "Hi " + Username + ",<br/><br/>" +
                                "Click on the below link to reset your Password:<br/><br/>" +
                                "<a href='https://localhost:44328/PasswordRecovery.aspx?id=" + myGUID + "'>Reset Password</a><br/><br/>" +
                                "Regards,<br/>Team Not Amazon<br/><br/>" +
                                "<i>Please do not reply to this email, this is system generated.</i>";
                    //This myGuid is refered tp ?Uid= in the last of the URl

                    MailMessage PassResetMail = new MailMessage("notamazon.na@gmail.com", ToEmailAddress);        // Enter the email which is from and then TO.

                    PassResetMail.Body= EmailBody;
                    PassResetMail.IsBodyHtml = true;
                    PassResetMail.Subject = "Not Amazon - Reset Password";

                    //SmtpClient SMTP = new SmtpClient("SMTP.gmail.com",587);
                    //SMTP.Credentials = new NetworkCredential()
                    //{
                    //    UserName = "pspking786@gmail.com",      // My email Id
                    //    Password = "My Password"            //Write my email password
                    //};

                    //SMTP.EnableSsl = true;
                    //SMTP.Send(PassResetMail);           // Here we will send the password recovery mail.



                    using (SmtpClient client = new SmtpClient())
                    {
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = false;
                        client.Credentials = new NetworkCredential("notamazon.na@gmail.com", "abcdefghijk");
                        client.Host = "smtp.gmail.com";
                        client.Port = 587;
                        client.DeliveryMethod = SmtpDeliveryMethod.Network;

                        client.Send(PassResetMail);
                    }
                    //------------------------------------- Email sent -------------------------------------//



                    lblResetPassMsg.Text = "Reset Password link sent to your registered Email.";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Green;
                    txtEmailID.Text = string.Empty;

                }
                else
                {
                    lblResetPassMsg.Text = "This Email is not registerd with us";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Red;
                    txtEmailID.Text = string.Empty;
                    txtEmailID.Focus();
                }


            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}
