<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ecom_NA.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Not Amazon</title>

    <meta charset="utf-8">
    <meta name="viewport" contect="width=device-width, initial-scale=1">
    <meta http-equiv="content-language" content="IE-edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="css/Custom.css" rel="stylesheet" />
    <script src="js/Customjs.js"></script>

    <style>
    
.marquee {
    width: 100%;
    background: linear-gradient(90deg, #ff6600, #ff3300);
    color: white;
    padding: 6px 0;             /* smaller strip height */
    font-size: 16px;            /* smaller text */
    font-weight: 600;
    font-family: 'Poppins', sans-serif;
    overflow: hidden;
    position: relative;
    border-bottom: 2px solid #fff;
}

.marquee p {
    display: inline-block;
    white-space: nowrap;
    /* Remove big padding that delayed start */
    animation: scroll-left 25s linear infinite;
}

/* Animation starts immediately */
@keyframes scroll-left {
    0%   { transform: translateX(100%); }
    100% { transform: translateX(-100%); }
}



    #myCarousel .carousel-inner img {
        height: 400px;      
        width: 100%;        /* make images full width */
        object-fit: cover;  /* crop to fit without distortion */
    }
</style>


   

    /* Ensure the image stays circular */
.product-logo {
    width: 100px;       /* fixed width */
    height: 100px;      /* fixed height */
    border-radius: 40%; /* makes it circular */
    object-fit: cover;  /* keeps full image visible inside circle */
    margin-bottom: 15px;
}

/* Center text nicely */
.product-title {
    font-size: 20px;
    font-weight: bold;
    margin-top: 10px;
}

</style>








</head>
<body>



    <form id="form1" runat="server">

    <li class="divider"></li>
    <div class="marquee">
  <p>🔥 Mega Sale! Get up to 50% OFF on Electronics | 🛍️ Free Shipping on Orders Above $50 | 🎁 Special Discounts on Fashion & Accessories!</p>
</div>
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
                                            <!-- adding the geo location service and will add the javacrsipt in customjs.js -->



                        <div class="location-service">
                            <select id="locationDropdown">
                                <option value="">Select Location</option>
                                <option value="newyork">New York</option>
                                <option value="losangeles">Los Angeles</option>
                                <option value="chicago">Chicago</option>
                                <option value="houston">Houston</option>
                            </select>
                            <button onclick="getLocation()">📍 Detect</button>
                        </div>




                    <div class="navbar-collapse collapse">
                        <ul class ="nav navbar-nav navbar-right">
                            <li class="active"><a href ="Default.aspx">Home</a> </li>
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

                            <li><a href ="SignUp.aspx">Sign Up</a> </li>
                            <li><a href ="SignIn.aspx">Login</a> </li>
                        </ul>
                    </div>

                </div>

            </div>

            <!---------------------------------------------------------Image Slider ----->
        
                <div class="container">
                   
                  <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                      <li data-target="#myCarousel" data-slide-to="1"></li>
                      <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                      <div class="item active">
                        <img src ="sliders/slide4.jpg" alt="Great Deals" style="width:120%;">
                              <div class ="carousel-caption">
                              <h3>Bigger Savings</h3>
                              <p>Get upto 70% off on the selected products - applicable only for online shopping.</p>
                               <p><a class ="btn btn-lg btn-primary" href="#" role ="button"> Buy Now </a></p>    <!-- /*Add the link of the page to get to offer page*/-->
                          </div>
                      </div>

                      <div class="item">
                        <img src="icons/slider2.jpg" alt="Offers" style="width:120;">
                      </div>
    
                      <div class="item">
                        <img src="sliders/slider3.jpg" alt="Shop Online" style="width:120;">
                          <div class ="carousel-caption">
                              <h3>Clearance Sale</h3>
                              <p>Grab upto 50% off</p>
                          </div>
                      </div>
                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                      <span class="glyphicon glyphicon-chevron-left"></span>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                      <span class="glyphicon glyphicon-chevron-right"></span>
                      <span class="sr-only">Next</span>
                    </a>
                  </div>
                </div>
            <!--------------------------------------------------Image Slider ----->


        </div>

        <li class="divider"></li>
        <li class="divider"></li>
        <!--Middle Content start ------------------>
            <div class ="container text-center">
                <div class ="row ">

                    <!---  For Smartphone -->
                    <div class =" col-lg-3">
                        <img class ="img-circle product-logo" src="icons/smartphone_logo.png" alt ="Phones" width="100" height="100"/>
                        <h3>SmartPhones</h3>
                        <!--<p>special season offer on the brand new smartphones</p> -->
                        <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                    </div>

                    <!---  For Appliances  -->
                      <div class =" col-lg-3">
                        <img class ="img-circle product-logo" src="icons/Appliance_logo.png" alt ="Appliances" width="100" height="100"/>
                        <h3>Appliances</h3>
                        <!--<p>special season offer on the brand new smartphones</p> -->
                        <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                    </div>


                    <!---  For Electronics -->
                       <div class =" col-lg-3">
                        <img class ="img-circle product-logo" src="icons/Electronics_logo.png" alt ="Electronics" width="100" height="100"/>
                        <h3>Electronics</h3>
                        <!--<p>special season offer on the brand new smartphones</p> -->
                        <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                    </div>


                                        <!---  For Fashion -->
                       <div class =" col-lg-3">
                        <img class ="img-circle product-logo" src="icons/Fashion_logo.png" alt ="Fashion" width="100" height="100"/>
                        <h3>Fashion</h3>
                        <!--<p>special season offer on the brand new smartphones</p> -->
                        <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                    </div>


                                        <!---  For Groceries -->
                       <div class =" col-lg-3">
                        <img class ="img-circle product-logo" src="icons/Groceries_logo.png" alt ="Groceries" width="100" height="100"/>
                        <h3>Groceries</h3>
                        <!--<p>special season offer on the brand new smartphones</p> -->
                        <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                    </div>

                              <!---  For Music -->
                       <div class =" col-lg-3">
                        <img class ="img-circle product-logo" src="icons/Music_logo.png" alt ="Music" width="100" height="100"/>
                        <h3>Music</h3>
                        <!--<p>special season offer on the brand new smartphones</p> -->
                        <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                    </div>

                                                  <!---  For Toys -->
                       <div class =" col-lg-3">
                        <img class ="img-circle product-logo" src="icons/Toys_logo.png" alt ="Toys" width="100" height="100"/>
                        <h3>Toys</h3>
                        <!--<p>special season offer on the brand new smartphones</p> -->
                        <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                    </div>


                                                  <!---  For Sports -->
                       <div class =" col-lg-3">
                        <img class ="img-circle product-logo" src="icons/Sports_logo.png" alt ="Sports" width="100" height="100"/>
                        <h3>Sports</h3>
                        <!--<p>special season offer on the brand new smartphones</p> -->
                        <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                    </div>

                </div>


            </div>



        <!--       -- ------  Adding the Featured Products  ------------------->
        <hr />
        <div class="container product-section">
  <h2 class="section-title">✨ Featured Products</h2>
  <div class="product-grid">

    <!-- Product 1 -->
    <div class="product-card">
      <img src="Featured_img/iphone17.jpg" alt="iphone">
      <h3>iPhone 17</h3>
      <p>Latest models at unbeatable prices</p>
      <a href="#" class="btn-view">View More</a>
    </div>

    <!-- Product 2 -->
    <div class="product-card">
      <img src="Featured_img/Smarttab_.jpg" alt="Amazon Fire HD">
      <h3>Amazon Fire HD 8 Tablet</h3>
      <p>8” HD Display, 3GB memory, 32GB, designed for portable entertainment, Hibiscus</p>
      <a href="#" class="btn-view">Shop Now</a>
    </div>

    <!-- Product 3 -->
    <div class="product-card">
      <img src="Featured_img/TV.jpg" alt="TV">
      <h3>Electronics</h3>
      <p>Top deals on TVs, laptops & more</p>
      <a href="#" class="btn-view">Explore</a>
    </div>

    <!-- Product 4 -->
    <div class="product-card">
      <img src="Featured_img/Fashion_Featured.jpg" alt="Fashion">
      <h3>Fashion</h3>
      <p>Trendy clothing for men & women</p>
      <a href="#" class="btn-view">Discover</a>
    </div>

    <!-- Product 5 -->
    <div class="product-card">
      <img src="Featured_img/Groceries_Featured.jpg" alt="Groceries">
      <h3>Groceries</h3>
      <p>Fresh essentials delivered to your door</p>
      <a href="#" class="btn-view">Buy Now</a>
    </div>

    <!-- Product 6 -->
    <div class="product-card">
      <img src="Featured_img/Furniture_Featured.jpg" alt="Furniture">
      <h3>Furniture</h3>
      <p>Stylish & comfortable home furniture</p>
      <a href="#" class="btn-view">See Collection</a>
    </div>

          <!-- Product 7 -->
    <div class="product-card">
      <img src="Featured_img/Piano.jpg" alt="Music">
      <h3>Music</h3>
      <p>Musical instruments</p>
      <a href="#" class="btn-view">Explore</a>
    </div>

          <!-- Product 8 -->
    <div class="product-card">
      <img src="Featured_img/mac_featured.jpg" alt="Computer">
      <h3>Computer, Tablets & PC products</h3>
      <p>Grab a deal on latest devices</p>
      <a href="#" class="btn-view">See Collection</a>
    </div>

  </div>
</div>


        <!--Middle content ends ------------------->
        <hr />

<!-------- Listing some more products  ---------->

        <div class="container my-5">
  <h2 class="text-center mb-4">Hot Prices on Top prroducts</h2>
  <div class="row">

    <!-- Product 1 -->
    <div class="col-md-3 col-sm-6 mb-4">
      <div class="card product-card">
        <img src="icons/smartphone_logo.png" class="card-img-top" alt="Smartphone">
        <div class="card-body text-center">
          <h5 class="card-title">Smartphone</h5>
          <p class="price"><span class="old-price">₹15,000</span> ₹12,499</p>
          <p class="discount">Save 17%</p>
          <a href="#" class="btn btn-primary btn-sm">Add to Cart</a>
        </div>
      </div>
    </div>

    <!-- Product 2 -->
    <div class="col-md-3 col-sm-6 mb-4">
      <div class="card product-card">
        <img src="icons/laptop.png" class="card-img-top" alt="Laptop">
        <div class="card-body text-center">
          <h5 class="card-title">Laptop</h5>
          <p class="price"><span class="old-price">₹60,000</span> ₹49,999</p>
          <p class="discount">Save 20%</p>
          <a href="#" class="btn btn-primary btn-sm">Add to Cart</a>
        </div>
      </div>
    </div>

    <!-- Product 3 -->
    <div class="col-md-3 col-sm-6 mb-4">
      <div class="card product-card">
        <img src="icons/tv.png" class="card-img-top" alt="Television">
        <div class="card-body text-center">
          <h5 class="card-title">Smart TV</h5>
          <p class="price"><span class="old-price">₹30,000</span> ₹22,499</p>
          <p class="discount">Save 25%</p>
          <a href="#" class="btn btn-primary btn-sm">Add to Cart</a>
        </div>
      </div>
    </div>

    <!-- Product 4 -->
    <div class="col-md-3 col-sm-6 mb-4">
      <div class="card product-card">
        <img src="icons/fridge.png" class="card-img-top" alt="Fridge">
        <div class="card-body text-center">
          <h5 class="card-title">Refrigerator</h5>
          <p class="price"><span class="old-price">₹40,000</span> ₹34,499</p>
          <p class="discount">Save 14%</p>
          <a href="#" class="btn btn-primary btn-sm">Add to Cart</a>
        </div>
      </div>
    </div>

  </div>
</div>


        <hr />
        <hr />
        <hr />


        <!-- ------------------ Footer Starts -->

           <div class="container">
            <p class ="pull-right"><a href="#">back to top</a></p>
            <p>&copy; 2025 PSP &middot;<a href="Default.aspx">Home</a>&middot; <a href="#">About</a>&middot; <a href="#">Contact</a>&middot; <a href="#">Products</a>&middot;</p>

        </div>


        <!--  -----------------Footer Ends -->
    </form>





    <script>
function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition, showError);
    } else {
        alert("Geolocation is not supported by this browser.");
    }
}

function showPosition(position) {
    let lat = position.coords.latitude;
    let lon = position.coords.longitude;

    alert("Your location: \nLatitude: " + lat + "\nLongitude: " + lon);
    
    // TODO: You can call a reverse-geocoding API like Google Maps or OpenStreetMap
    // to get the actual city name and set it in the dropdown.
}

function showError(error) {
    switch(error.code) {
        case error.PERMISSION_DENIED:
            alert("User denied the request for Geolocation.");
            break;
        case error.POSITION_UNAVAILABLE:
            alert("Location information is unavailable.");
            break;
        case error.TIMEOUT:
            alert("The request to get user location timed out.");
            break;
        case error.UNKNOWN_ERROR:
            alert("An unknown error occurred.");
            break;
    }
}
    </script>



</body>
</html>
