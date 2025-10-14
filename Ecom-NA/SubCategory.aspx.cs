using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;


namespace Ecom_NA
{
    public partial class SubCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindMainCat();


                BindSubCategoryRepeater();   // This is the method to bind the data for the repeater table on the page like it will display the list of available entries in the database to the webpage.
            }
        }

        private void BindSubCategoryRepeater()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomNADB"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select A.*,B.* from tblSubCategory A inner join tblCategory B on B.CatID= A.MainCatID;", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrSubCategory.DataSource = dt;
                        rptrSubCategory.DataBind();
                    }
                }
            }
        }


        protected void btnAddSubCategory_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomNADB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblSubCategory(SubCatName, MainCatID) Values('" + txtSubCategory.Text + "', '" + ddlMainCatID.SelectedItem.Value + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Sub Category Added Successfully ');  </script>");
                txtSubCategory.Text = string.Empty;

                con.Close();
                ddlMainCatID.ClearSelection();
                ddlMainCatID.Items.FindByValue("0").Selected = true;


            }
            BindSubCategoryRepeater();  //when added the data we will call this function so at a time it will update the below table on the web page without making page to refresh.

        }

        private void bindMainCat()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomNADB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tblCategory", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if(dt.Rows.Count != 0)
                {
                    ddlMainCatID.DataSource = dt;
                    // here in the below 2 line we are getting the name of the category from the tblCategory, like it will show the Category names, but once selected it will show the Category ID
                    ddlMainCatID.DataTextField = "CatName";
                    ddlMainCatID.DataValueField = "CatID";
                    ddlMainCatID.DataBind();
                    ddlMainCatID.Items.Insert(0, new ListItem("-Select-", "0"));   //by default it will be -Select- with 0 index.
                }
                    


            }

        }
    }
}