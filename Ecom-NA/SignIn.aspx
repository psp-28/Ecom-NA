<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Ecom_NA.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Not Amazon - Login</title>
    <meta charset="utf-8">
    <meta name="viewport" contect="width=device-width, initial-scale=1">
    <meta http-equiv="content-language" content="IE-edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="css/Custom.css" rel="stylesheet" />
    <script src="js/Customjs.js"></script>


        <style>
        body {
            padding-top: 70px;
            background: #f5f5f5;
        }
        .login-box {
            max-width: 400px;
            margin: 50px auto;
            padding: 25px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0px 0px 12px rgba(0,0,0,0.2);
        }
        .login-box h2 {
            margin-bottom: 20px;
            text-align: center;
            font-weight: bold;
            color: #2c3e50;
        }
        .btn-google {
            background-color: #dd4b39;
            color: white;
            margin-top: 10px;
        }
        .btn-google:hover {
            background-color: #c23321;
            color: #fff;
        }
    </style>





</head>
<body>
    <form id="form1" runat="server">
 

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

                <li><a href ="SignUp.aspx">Sign up</a> </li>
                <li class="active"><a href ="SignIn.aspx">Login</a> </li>   <!-- We will add the active class to get that this page is now in active state.-->
            </ul>
        </div>

    </div>

</div>

        <!-- Login Box -->
        <div class="login-box">
            <h2>User Login</h2>

            <div class="form-group">
                <label>Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter email"></asp:TextBox>
                
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidatorEmail" 
                        runat="server" 
                        ErrorMessage="Please enter Email" 
                        ControlToValidate="txtEmail" 
                        Display="Dynamic" 
                        CssClass="text-danger">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator 
                        ID="RegularExpressionValidatorEmail" 
                        runat="server" 
                        ErrorMessage="Invalid Email" 
                        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" 
                        ControlToValidate="txtEmail" 
                        Display="Dynamic" 
                        CssClass="text-danger">
                    </asp:RegularExpressionValidator>
            </div>

            <div class="form-group">
                <label>Password</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidatorPassword" 
                        runat="server" 
                        ErrorMessage="Please enter Password"  
                        ControlToValidate="txtPassword" 
                        Display="Dynamic" 
                        CssClass="text-danger">
                    </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <asp:CheckBox ID="Rememberme" runat="server" />
                <asp:Label ID="RememberLabel" runat="server" Text="Remember me"></asp:Label>
            </div>
            

           <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary btn-block" Text="Sign In" OnClick="btnLogin_Click" Height="37px" />

            <!--OnClick="btnLogin_Click" method will run in C#-->

            <asp:Button ID="btnGoogle" runat="server" CssClass="btn btn-google btn-block" Text="Sign in with Google" />

            <p style="margin-top:15px; text-align:center;">
                Don’t have an account? <a href="SignUp.aspx">Sign Up</a>
            </p>

            <!--Forget password-->

            <div class="form-group row">
                <div class="col-md-12 text-center">

                    <asp:HyperLink ID="ForgotPassword" runat="server" NavigateUrl="~/ForgetPassword.aspx">Forgot Password ?</asp:HyperLink>      
                </div>
            </div>

            <hr />

            <div class="form-group row">
                <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
            </div>
            



        </div>
  


        
        <!--Footer -->
  
           <div class="container">
            <p class ="pull-right"><a href="#">back to top</a></p>
            <p>&copy; 2025 PSP &middot;<a href="Default.aspx">Home</a>&middot; <a href="#">About</a>&middot; <a href="#">Contact</a>&middot; <a href="#">Products</a>&middot;</p>

        </div>
    </form>
</body>
</html>
