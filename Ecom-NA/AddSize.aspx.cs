using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Ecom_NA
{
    public partial class AddSize : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindBrand();
                bindMainCategory();
                bindGender();
                BindSizeRepeater();
            }
            
        }

        private void BindSizeRepeater()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomNADB"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("\r\nselect A.*,B.*,C.*,D.*,E.* from tblSize A inner join tblCategory B on B.CatID = A.CategoryID inner join tblBrands C on C.BrandID= A.BrandID inner join tblSubCategory D on D.SubCatID=A.SubCategoryID inner join tblGender E on E.GenderID=A.GenderID", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrSize.DataSource = dt;
                        rptrSize.DataBind();
                    }
                }
            }
        }



        protected void btnSize_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomNADB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblSize(SizeName, BrandID, CategoryID, SubCategoryID, GenderID) Values('" + txtSize.Text + "', '" + ddlBrand.SelectedItem.Value + "', '" + ddlCategory.SelectedItem.Value + "', '" + ddlSubCategory.SelectedItem.Value + "', '" + ddlGender.SelectedItem.Value + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Size Added Successfully ');  </script>");
                txtSize.Text = string.Empty;

                con.Close();
                ddlBrand.ClearSelection();
                ddlBrand.Items.FindByValue("0").Selected = true;

                ddlCategory.ClearSelection();
                ddlCategory.Items.FindByValue("0").Selected = true;

                ddlSubCategory.ClearSelection();
                ddlSubCategory.Items.FindByValue("0").Selected = true;

                ddlGender.ClearSelection();
                ddlGender.Items.FindByValue("0").Selected = true;


            }
            BindSizeRepeater();
        }

        private void bindMainCategory()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomNADB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tblCategory", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    ddlCategory.DataSource = dt;
                    // here in the below 2 line we are getting the name of the category from the tblCategory, like it will show the Category names, but once selected it will show the Category ID
                    ddlCategory.DataTextField = "CatName";
                    ddlCategory.DataValueField = "CatID";
                    ddlCategory.DataBind();
                    ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));   //by default it will be -Select- with 0 index.
                }



            }

        }



        private void bindBrand()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomNADB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tblBrands", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    ddlBrand.DataSource = dt;
                    // here in the below 2 line we are getting the name of the category from the tblCategory, like it will show the Category names, but once selected it will show the Category ID
                    ddlBrand.DataTextField = "Name";
                    ddlBrand.DataValueField = "BrandID";
                    ddlBrand.DataBind();
                    ddlBrand.Items.Insert(0, new ListItem("-Select-", "0"));   //by default it will be -Select- with 0 index.
                }



            }

        }






        // event when we select any category from the dropdownlist, it will fire this event. Go to design view and find category and in the properties under event find OnSelectedIndexChanged and double click on it. This is to get the subcategory automatically when we select any category. This will work when we add AutoPostBack="True" in the dropdownlist in design view.
        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {

            int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);  // here we are getting the selected value of the category, which is CatID from the tblCategory which is in integer.


            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomNADB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tblSubCategory where MainCatID = '"+ddlCategory.SelectedItem.Value+"'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    ddlSubCategory.DataSource = dt;
                    // here in the below 2 line we are getting the name of the category from the tblCategory, like it will show the Category names, but once selected it will show the Category ID
                    ddlSubCategory.DataTextField = "SubCatName";
                    ddlSubCategory.DataValueField = "SubCatID";
                    ddlSubCategory.DataBind();
                    ddlSubCategory.Items.Insert(0, new ListItem("-Select-", "0"));   //by default it will be -Select- with 0 index.
                }



            }
        }







        private void bindGender()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EcomNADB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tblGender with(nolock)", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    ddlGender.DataSource = dt;
                    // here in the below 2 line we are getting the name of the category from the tblCategory, like it will show the Category names, but once selected it will show the Category ID
                    ddlGender.DataTextField = "GenderName";
                    ddlGender.DataValueField = "GenderID";
                    ddlGender.DataBind();
                    ddlGender.Items.Insert(0, new ListItem("-Select-", "0"));   //by default it will be -Select- with 0 index.
                }



            }

        }

    }
}