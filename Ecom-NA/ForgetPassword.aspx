<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="Ecom_NA.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password ?</title>
 <meta charset="utf-8">
 <meta name="viewport" contect="width=device-width, initial-scale=1">
 <meta http-equiv="content-language" content="IE-edge">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <link href="css/Custom.css" rel="stylesheet" />
 <script src="js/Customjs.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
               <div id="mainNavbar" class ="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class ="container-fluid">
        <div class ="navbar-header">
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target=".navbar-collapse">
                <span class ="sr-only">Toggle Notification</span>
                <span class="icon-bar"></span>
               

            </button>
            <a class ="navbar-brand" href="Default.aspx" ><span><img src="icons/NA.jpg" alt="Not Amazon"/></span>Not Amazon</a>

        </div>
        <div class="navbar-collapse collapse">
            <ul class ="nav navbar-nav navbar-right">
                <li><a href ="Default.aspx">Home</a> </li>
                <li><a href ="#">About</a> </li>
                <li><a href ="#">Contact Us</a> </li>
                <li><a href ="#">Blog</a> </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class ="caret"></b></a>
                    <ul class ="dropdown-menu ">
                        <li class ="dropdown-header ">Men</li>
                        <li><a href ="#">Shirts</a></li>
                        <li><a href ="#">Jackets</a></li>
                        <li><a href ="#">Joggers</a></li>
                        <li><a href ="#">Trousers</a></li>
                        <li><a href ="#">Denim</a></li>


                        <!-- Divider (adds space/line) -->
                        <li class="divider"></li>

                        <li class ="dropdown-header ">Women</li>
                        <li><a href ="#">Women's Clothing</a></li>
                        <li><a href ="#">Shoes</a></li>
                        <li><a href ="#">Handbags & Wallets</a></li>
                        <li><a href ="#">Accessories & Sunglasses</a></li>
                        <li><a href ="#">Jewelry & Watches</a></li>
                    </ul>
                </li>

                <li><a href ="SignIn.aspx">Login</a> </li>   <!-- We will add the active class to get that this page is now in active state.-->
            </ul>
        </div>

    </div>

</div>


    <div class="container">
        <div class="form-horizontal">
            <h2>Forgot Password ?</h2>
            <p>Please enter your registered email address. We will send you instructions to reset your password.</p>

            <hr />

            
            <asp:Label ID="lblEmail" runat="server" Text="" ForeColor="Red"></asp:Label>
            <div class="form-group">
                <label class="control-label col-sm-2" for="email">Email:</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtEmailID" runat="server" CssClass="form-control" placeholder="Enter email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmailID" ErrorMessage="* Email is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmailID" ErrorMessage="* Invalid Email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="btnResetPassword" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnResetPassword_Click"/>
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-default" CausesValidation="false" OnClick="btnCancel_Click"/>
                </div>
                <asp:Label ID="lblResetPassMsg" CssClass="text-success" runat="server" Text="Label"></asp:Label>

        </div>
    </div>
       
</div>



    </form>


    
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
        <!--Footer -->
  
           <div class="container">
            <p class ="pull-right"><a href="#">back to top</a></p>
            <p>&copy; 2025 PSP &middot;<a href="Default.aspx">Home</a>&middot; <a href="#">About</a>&middot; <a href="#">Contact</a>&middot; <a href="#">Products</a>&middot;</p>

        </div>
</body>
</html>
