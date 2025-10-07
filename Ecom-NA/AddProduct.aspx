<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Ecom_NA.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
            <div class ="form-horizontal">
                <h2>Add Product</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Product Name"></asp:Label>

                    <div class="col-md-3">
                        <asp:TextBox ID="txtProductName" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Price"></asp:Label>

                    <div class="col-md-3">
                        <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>



                 <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="SellingPrice"></asp:Label>

                    <div class="col-md-3">
                        <asp:TextBox ID="txtSellPrice" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>


                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Brand"></asp:Label>

                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>
                </div>


               <div class="form-group">
                    <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Category"></asp:Label>

                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>
                </div>
            </div>

        <br />
        <hr />

             <div class="form-group">
                    <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="SubCategory"></asp:Label>

                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>
                </div>
        <br />
        <hr />

             <div class="form-group">
                    <asp:Label ID="Label19" runat="server" CssClass="col-md-2 control-label" Text="Gender"></asp:Label>

                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>
                </div>
        <br />
        <hr />

               <div class="form-group">
                    <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Size"></asp:Label>

                    <div class="col-md-3">
                        <asp:TextBox ID="txtDynamicSize" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
        <br />
        <hr />

               <div class="form-group">
                    <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text="Description"></asp:Label>

                    <div class="col-md-3">
                        <asp:TextBox ID="txtDescription" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>


        <br />
        <hr />

               <div class="form-group">
                    <asp:Label ID="Label9" runat="server" CssClass="col-md-2 control-label" Text="Product Details"></asp:Label>

                    <div class="col-md-3">
                        <asp:TextBox ID="txtPDetail" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
        <br />
        <hr />
        

               <div class="form-group">
                    <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label" Text="Materials and Care"></asp:Label>

                    <div class="col-md-3">
                        <asp:TextBox ID="txtMatCare" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
        <br />
        <!--We will add the 5 images of the product, for which is the below code -->
        <hr />
               <div class="form-group">
                    <asp:Label ID="Label11" runat="server" CssClass="col-md-2 control-label" Text="upload Image 1"></asp:Label>

                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg01" CssClass="form-control" runat="server" />
                    </div>
                </div>
        <br />
        <hr />
        
               <div class="form-group">
                    <asp:Label ID="Label12" runat="server" CssClass="col-md-2 control-label" Text="upload Image 2"></asp:Label>

                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg02" CssClass="form-control" runat="server" />
                    </div>
                </div>

        <br />
        <hr />
               <div class="form-group">
                    <asp:Label ID="Label13" runat="server" CssClass="col-md-2 control-label" Text="upload Image 3"></asp:Label>

                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg03" CssClass="form-control" runat="server" />
                    </div>
                </div>
        <br />
        <hr />
        
               <div class="form-group">
                    <asp:Label ID="Label14" runat="server" CssClass="col-md-2 control-label" Text="upload Image 4"></asp:Label>

                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg04" CssClass="form-control" runat="server" />
                    </div>
                </div>
        <br />
        <hr />
        
        
               <div class="form-group">
                    <asp:Label ID="Label15" runat="server" CssClass="col-md-2 control-label" Text="upload Image 5"></asp:Label>

                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg05" CssClass="form-control" runat="server" />
                    </div>
                </div>

        
        <!-- Uploading 5 images done -->


                
        <br />
        <br />
               <div class="form-group">
                    <asp:Label ID="Label16" runat="server" CssClass="col-md-2 control-label" Text="Free Delivery"></asp:Label>

                    <div class="col-md-3">
                        <asp:CheckBox ID="chFD" runat="server" />
                    </div>
                </div>

                <br />
               <div class="form-group">
                    <asp:Label ID="Label17" runat="server" CssClass="col-md-2 control-label" Text="30 Days Return"></asp:Label>

                    <div class="col-md-3">
                        <asp:CheckBox ID="ch30Ret" runat="server" />
                    </div>
                </div>
        <br />
                
               <div class="form-group">
                    <asp:Label ID="Label18" runat="server" CssClass="col-md-2 control-label" Text="Cash on Delivery"></asp:Label>

                    <div class="col-md-3">
                        <asp:CheckBox ID="chCOD" runat="server" />
                    </div>
                </div>

        <br />
        <div class="form-group">
            <div class="col-md-2"> </div>
                <div class="col-md-6">
                    <asp:Button ID="btnAdd" CssClass="btn btn-success" runat="server" Text="Add Product" OnClick="btnAdd_Click" />
                    
                </div>
            

        </div>
    </div>

</asp:Content>
