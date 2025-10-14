<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="SubCategory.aspx.cs" Inherits="Ecom_NA.SubCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


                <div class ="container ">
    <br />
    <br />

            <div class ="form-horizontal ">
       
                <h2>Add Sub Category</h2>
                <hr />


              <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Main CategoryID"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlMainCatID" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatormMainCatID" runat="server" CssClass ="text-danger " ErrorMessage="* Please select the Main CategoryID" ControlToValidate="ddlMainCatID" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>




                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="Sub Category Name"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtSubCategory" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCategoryName" runat="server" CssClass ="text-danger " ErrorMessage="*Please Enter Sub Category" ControlToValidate="txtSubCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                

                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-4 ">

                        <asp:Button ID="btnAddSubCategory" CssClass ="btn btn-success " runat="server" Text="Add Sub Category" OnClick="btnAddSubCategory_Click" />
                        
                    </div>

                   
                </div>
                
              
                 



                


            </div>

        <h1>Sub Category</h1>
        <hr />

 <div class="panel panel-default">

               <div class="panel-heading"> All Sub Categories</div>


     <asp:repeater ID="rptrSubCategory" runat="server">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th>Sub-Categories</th>
                        <th>Main Category</th>
                        <th>Edit</th>

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <th> <%# Eval("SubCatID") %> </th>
                    <td><%# Eval("SubCatName") %>   </td>
                    <td><%# Eval("CatName") %>   </td>

                 
                    <td>Edit</td>
                </tr>
         </ItemTemplate>


         <FooterTemplate>
             </tbody>

              </table>
         </FooterTemplate>

     </asp:repeater>

              
                
         
         

   
</div>

<hr />
<%--<div class="row">
         

         <div class ="col-md-6"> 

         <div class="row">
         <div class="col-md-6">
         <div class="form-group">
                        <label>Enter ID:</label>
                        <asp:TextBox ID="txtID" CssClass="form-control" runat="server" AutoPostBack="true"  ontextchanged="txtID_TextChanged"></asp:TextBox> 
                        
                    </div>
                    <div class="form-group">
                   
                    </div>
         </div>
         <div class="col-md-6">
         <div class="form-group">
                        <label>Enter Brand:</label>
                        <asp:TextBox ID="txtUpdateBrandName" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
         
          <div class="form-group">
                        <asp:Button ID="btnUpdateBrand" CssClass ="btn btn-primary " runat="server" 
                            Text="UPDATE" onclick="btnUpdateBrand_Click"  />
                    </div>
         </div>
        
         </div>
                    
                    

                    
                    
          </div>    
          <div class="col-md-6"></div>

 </div>--%>



        </div>
</asp:Content>
