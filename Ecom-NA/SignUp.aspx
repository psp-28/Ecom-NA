<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Ecom_NA.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign up</title>

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
        padding-top: 70px; /* adjust height to match your navbar */
    }
        
    /* Make navbar bigger */
    .navbar {
        padding: 15px 20px;      /* increase height */
        font-size: 14px;         /* bigger menu text */
    }

    /* Style for brand/logo area */
    .navbar-brand {
        font-size: 26px;         /* bigger text */
        font-weight: bold;
        font-family: 'Georgia', serif; /* stylish font */
        color: #2c3e50 !important;
        display: flex;
        align-items: center;
    }

/* Circle responsive logo */
.navbar-brand img {
    max-width: 100%;
    height: auto;
    width: 60px;              /* default desktop size */
    border-radius: 50%;
    margin-right: 10px;
    border: 2px solid #2c3e50;
    animation: spin 6s linear infinite;
}

/* Smaller logo for tablets */
@media (max-width: 992px) {
    .navbar-brand img {
        width: 50px;
    }
}

/* Even smaller for mobile */
@media (max-width: 768px) {
    .navbar-brand img {
        width: 40px;
    }
}

/* Smallest phones */
@media (max-width: 480px) {
    .navbar-brand img {
        width: 35px;
    }
}


    /* Simple spinning animation */
    @keyframes spin {
        from { transform: rotate(0deg); }
        to { transform: rotate(360deg); }
    }

    /* Navbar links */
    .navbar-nav > li > a {
        font-size: 18px;
        font-weight: 500;
    }

    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div id="mainNavbar" class ="navbar navbar-defaullt navbar-fixed-top" role="navigation">
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

                <li><a href ="SignUp.aspx">Register</a> </li>
            </ul>
        </div>

    </div>

</div>
        </div>

        <!--  Sign up page start -->


        <div class="container signup-container" style="max-width:500px; margin-top:50px; margin-bottom:50px;">
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <h2>Create Your Account</h2>
            <p class="text-muted">Sign up to access exclusive deals!</p>
        </div>
        <div class="panel-body">

            <!-- Google Signup -->
            <div class="text-center mb-3">
                <button type="button" class="btn btn-danger btn-block" id="btnGoogleSignup">
                    <i class="glyphicon glyphicon-google"></i> Sign up with Google
                </button>
            </div>

            <hr style="margin:20px 0;">
            

            <!-- Normal Signup Form -->
            <asp:TextBox ID="txtName" CssClass="form-control mb-2" Placeholder="Full Name" runat="server"></asp:TextBox>
            <li class="divider"></li>
            <asp:TextBox ID="txtEmail" CssClass="form-control mb-2" Placeholder="Email" runat="server"></asp:TextBox>
            <li class="divider"></li>
             <asp:TextBox ID="txtPhone" CssClass="form-control mb-2" Placeholder="Phone" runat="server"></asp:TextBox>
            <li class="divider"></li>
            <asp:TextBox ID="txtPassword" CssClass="form-control mb-2" TextMode="Password" Placeholder="Password" runat="server"></asp:TextBox>
            <li class="divider"></li>
            <asp:TextBox ID="txtConfirmPassword" CssClass="form-control mb-3" TextMode="Password" Placeholder="Confirm Password" runat="server"></asp:TextBox>
            <li class="divider"></li>

            <asp:Button ID="btnSignup" CssClass="btn btn-primary btn-block" Text="Sign Up" runat="server" OnClick="btnSignup_Click" />
            <li class="divider"></li>
            <p class="text-center mt-3">Already have an account? <a href="#">Login here</a></p>
        </div>
    </div>
</div>



         <!--  Sign up page ends -->

        <!--Footer -->
  
           <div class="container">
            <p class ="pull-right"><a href="#">back to top</a></p>
            <p>&copy; 2025 PSP &middot;<a href="Default.aspx">Home</a>&middot; <a href="#">About</a>&middot; <a href="#">Contact</a>&middot; <a href="#">Products</a>&middot;</p>

        </div>
 
       
    </form>


</body>
</html>
