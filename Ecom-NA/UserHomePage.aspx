<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHomePage.aspx.cs" Inherits="Ecom_NA.UserHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>User Home Page</title>
      <meta charset="utf-8">
      <meta name="viewport" contect="width=device-width, initial-scale=1">
      <meta http-equiv="content-language" content="IE-edge">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <link href="css/Custom.css" rel="stylesheet" />
      <script src="js/Customjs.js"></script>
    r

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

                <li>
                    <asp:Button ID="btnLogout" CssClass="btn btn-default navbar-btn" runat="server" Text="Logout" OnClick="btnlogout_Click"/>
                </li>
                
            </ul>
        </div>

    </div>

</div>


        </div>




        <br />
        <br />
        <br />
        <br />
        <br />


        <asp:Label ID="lblSuccess" runat="server" CssClass="text-success"></asp:Label>
        
        
        <!--Footer -->
  
        <hr />
        <hr />
        <hr />
        <hr />
        <hr />
        <br />
           <div class="container">
            <p class ="pull-right"><a href="#">back to top</a></p>
            <p>&copy; 2025 PSP &middot;<a href="Default.aspx">Home</a>&middot; <a href="#">About</a>&middot; <a href="#">Contact</a>&middot; <a href="#">Products</a>&middot;</p>

        </div>
    </form>
</body>
</html>
