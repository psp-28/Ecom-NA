<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddSize.aspx.cs" Inherits="Ecom_NA.AddSize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class ="container ">
    <br />
    <br />

            <div class ="form-horizontal ">
       
                <h2>Add Size</h2>
                <hr />
                 

                
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="Size name"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtSize" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSize" runat="server" CssClass ="text-danger " ErrorMessage="*Please enter size" ControlToValidate="txtSize" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>



                
              <div class ="form-group">
                    <asp:Label ID="Label3" CssClass ="col-md-2 control-label " runat="server" Text="Brand"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlBrand" runat="server" CssClass ="text-danger " ErrorMessage="* Please select Brand" ControlToValidate="ddlBrand" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>




                
              <div class ="form-group">
                    <asp:Label ID="Label4" CssClass ="col-md-2 control-label " runat="server" Text="Category"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlCategory" runat="server" CssClass ="text-danger " ErrorMessage="* Please select Category" ControlToValidate="ddlCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>







              <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Sub Category"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlSubCategory" runat="server" CssClass ="text-danger " ErrorMessage="* Please select sub category" ControlToValidate="ddlSubCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                
              <div class ="form-group">
                    <asp:Label ID="Label5" CssClass ="col-md-2 control-label " runat="server" Text="Gender"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlGender" runat="server" CssClass ="text-danger " ErrorMessage="* Please select gender" ControlToValidate="ddlGender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>





                

                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-4 ">

                        <asp:Button ID="btnSize" CssClass ="btn btn-success " runat="server" Text="Add Size" OnClick="btnSize_Click" />
                        
                    </div>

                   
                </div>
                
                </div>
        </div>




            <h1>Size</h1>
        <hr />

 <div class="panel panel-default">

               <div class="panel-heading"> Size </div>


     <asp:repeater ID="rptrSize" runat="server">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th>Size Name</th>
                        <th>Brand</th>
                        <th>Category</th>
                        <th>Sub Category</th>
                        <th>Gender</th>
                        <th>Edit</th>

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <th> <%# Eval("SizeID") %> </th>
                    <td><%# Eval("SizeName") %>   </td>
                 <td><%# Eval("Name") %>   </td>
                 <td><%# Eval("CatName") %>   </td>
                 <td><%# Eval("SubCatName") %>   </td>
                 <td><%# Eval("GenderName") %>   </td>

                    <td>Edit</td>
                </tr>
         </ItemTemplate>


         <FooterTemplate>
             </tbody>

              </table>
         </FooterTemplate>

     </asp:repeater>

              
                
         
         

   
</div>
</asp:Content>
