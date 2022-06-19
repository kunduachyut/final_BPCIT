<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="shopmart.models.Product" %>
    <!DOCTYPE html>
    <html>
        <head>
            <!-- Basic -->
            <meta charset="utf-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <!-- Mobile Metas -->
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <!-- Site Metas -->
            <meta name="keywords" content="" />
            <meta name="description" content="" />
            <meta name="author" content="" />
            <link rel="shortcut icon" href="images/logo.jpg" type="">
            <title>ShopMart</title>
            <!-- bootstrap core css -->
            <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
            <!-- font awesome style -->
            <link href="css/font-awesome.min.css" rel="stylesheet" />
            <!-- Custom styles for this template -->
            <link href="css/style.css" rel="stylesheet" />
            <!-- responsive style -->
            <link href="css/responsive.css" rel="stylesheet" />
            <!--single product page-->
            <link rel="stylesheet"  href="css/product.css" />
        </head>
        
        <body>
      	  <%Product product = (Product)request.getAttribute("product");%>
          <!--hadder-->
          <!-- header section strats -->
          <header class="header_section">
            <div class="container">
               <nav class="navbar navbar-expand-lg custom_nav-container ">
                  <a class="navbar-brand" href="index.jsp"><img width="170" src="images/logo.jpg" alt="#" /></a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                     aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                     <span class=""> </span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <ul class="navbar-nav">
                        <li class="nav-item active">
                           <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="products.jsp">Products</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="blogs.jsp">Blog</a>
                        </li>
                        <li class="nav-item">
	                     <% 
	                     	if (session.getAttribute("user") == null)
	                     		out.print("<a class='nav-link' href='login.jsp'>Login</a>"); 
	                     	else out.print("<a class='nav-link' href='logout'>Logout</a>");
	                     %>
	                     </li>
                     </ul>
                  </div>
               </nav>
            </div>
         </header>
    
            <!---->
    
            <section id="prodetails" class="section-p1">
                <div class="single-pro-image">
                        <img src="images/products/<%=product.getProductID()%>.jpeg" width="100%" id="MainImg">
                    
    
                <div class="small-img-group">
                <div class="small-img-col">
                    <img src="" width="100%" class="small-image">
                </div>
                <div class="small-img-col">
                    <img src=""width="100%" class="small-image">
                </div>
                <div class="small-img-col">
                    <img src=""width="100%" class="small-image">
                </div>
                <div class="small-img-col">
                    <img src=""width="100%" class="small-image">
                </div>
            </div>
            </div>
            
            <div class="single-pro-details">
                <br>
                <h4><%=product.getType()%></h4>
                <br><br>
                <h3><%=product.getTitle()%></h3>
                <br>
                <p id="price">Rs. <%=product.getPrice()%></p>
                <br>
    
                <select id="size">
                    <option>Select Size</option>
                    <option>XL</option>
                    <option>XXL</option>
                    <option>Small</option>
                    <option>Large</option>
                </select>
                <br>
                <input id="input" type="number" value="1">
                <a href="payment.jsp"><button id="pay">Buy Now</button></a>
                <br><br><br>
                <h3 id="h3">Product Details</h3>
                <br>
                <span>
                    <%=product.getDescription()%>
                </span>
            </div>
         </section>
      <!-- footer start -->
      <footer>
         <div class="container">
            <div class="row">
               <div class="col-md-4">
                  <div class="full">
                     <div class="logo_footer">
                        <a href="#"><img width="170" src="images/logo.jpg" alt="#" /></a>
                     </div>
                     <div class="information_f">
                        <p><strong>ADDRESS:</strong> 500 Local Road,Street 30, Kolkata</p>
                        <p><strong>TELEPHONE:</strong> +01 2222 365/(+91)01 2345 6789</p>
                        <p><strong>EMAIL:</strong> shopmart.shop@gmail.com</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-8">
                  <div class="row">
                     <div class="col-md-7">
                        <div class="row">
                           <div class="col-md-6">
                              <div class="widget_menu">
                                 <h3>Menu</h3>
                                 <ul>
                                    <li><a href="index.jsp">Home</a></li>
                                    <li><a href="blogs.jsp">Blog</a></li>
                                 </ul>
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div class="widget_menu">
                                 <h3>Account</h3>
                                 <ul>
                                    
                                    <li><a href="login.jsp">Login</a></li>
                                    <li><a href="products.jsp">Shopping</a></li>
                                    
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-5">
                        <div class="widget_menu">
                           <h3>Copyright</h3>
                           <div class="information_f">
                              <p>shoppingmart eCommerce © 2022. All Rights Reserved</p>
                           </div>
                           
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <!-- footer end -->
   </body>
</html>