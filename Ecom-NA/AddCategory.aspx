<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="Ecom_NA.AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <div class ="container ">
    <br />
    <br />

            <div class ="form-horizontal ">
                <h2>Add Category</h2>
                <hr />
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="Category Name"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtCategory" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategoryName" runat="server" CssClass ="text-danger " ErrorMessage="*Please Enter Category" ControlToValidate="txtCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                

                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-4 ">

                        <asp:Button ID="btnAddtxtCategory" CssClass ="btn btn-success " runat="server" Text="Add Category" OnClick="btnAddtxtCategory_Click" />
                        
                    </div>

                   
                </div>
                
              
                 



                


            </div>

        <h1>Categories</h1>
        <hr />

 <div class="panel panel-default">

               <div class="panel-heading"> All Categories</div>


     <asp:repeater ID="rptrCategory" runat="server">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th>Categories</th>
                        <th>Edit</th>

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <th> <%# Eval("CatID") %> </th>
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
