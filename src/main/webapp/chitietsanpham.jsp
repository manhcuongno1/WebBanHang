
<%@page import="NguyenVanManhCuongbean.sanphambean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Mc Shop</title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="Colo Shop Template" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" type="text/css"
	href="styles/bootstrap4/bootstrap.min.css" />
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.carousel.css" />
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css" />
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/animate.css" />

<link rel="stylesheet" type="text/css" href="styles/responsive.css" />

<link
      rel="stylesheet"
      type="text/css"
      href="plugins/jquery-ui-1.12.1.custom/jquery-ui.css"
    />
    <link rel="stylesheet" type="text/css" href="styles/chitiet.css" />
    <link
      rel="stylesheet"
      type="text/css"
      href="styles/single_responsive.css"
    />
</head>

<body>
	<div class="super_container">
		<!-- Header -->

		<header class="header trans_300">
			<!-- Top Navigation -->

			<div class="top_nav">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<div class="top_nav_left">free shipping for all customers</div>
						</div>
						<div class="col-md-6 text-right">
							<div class="top_nav_right">
								<ul class="top_nav_menu">
									<!-- Currency / Language / My Account -->
									<li class="account"><a href="#"> <i class="fa fa-user"
											aria-hidden="true"></i> Xin chào cường <!-- <i class="fa fa-angle-down"></i> -->
									</a>
										<ul class="account_selection">
											<li><a href="#"><i class="fa fa-sign-in"
													aria-hidden="true"></i>Đăng nhập</a></li>
											<li><a href="#"><i class="fa fa-user-plus"
													aria-hidden="true"></i>Đăng ký</a></li>
										</ul></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Main Navigation -->

			<div class="main_nav_container">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 text-right">
							<div class="logo_container">
								<a href="#">MC<span>shop</span></a>
							</div>
							<nav class="navbar">
								<ul class="navbar_menu">
									<li><a href="#">Trang chủ</a></li>
									<li><a href="#">Sản phẩm</a></li>
									<li><a href="#">Lịch sử mua hàng</a></li>
									<li><a href="#">Thanh toán</a></li>
								</ul>

								<ul class="navbar_user" style="position: relative">
									<form action="sanphamController" method="post">
										<div class="search-bar">
											<input type="text" placeholder="Tìm kiếm" name="txttim"/>

											<button class="icon"
												style="border: none; background-color: #fff;">
												<svg xmlns="http://www.w3.org/2000/svg" width="20.414"
													height="20.414" viewBox="0 0 20.414 20.414">
                            <g id="Search_Icon" data-name="Search Icon"
														transform="translate(1 1)">
                              <ellipse id="Ellipse_1"
														data-name="Ellipse 1" cx="8.158" cy="8" rx="8.158" ry="8"
														fill="none" stroke="#1a2224" stroke-linecap="round"
														stroke-linejoin="round" stroke-width="2" />
                              <line id="Line_4" data-name="Line 4"
														x1="3.569" y1="3.5" transform="translate(14.431 14.5)"
														fill="none" stroke="#1a2224" stroke-linecap="round"
														stroke-linejoin="round" stroke-width="2" />
                            </g>
                          </svg>
										</div>
										</button>
									</form>

									<li class="checkout"
										style="position: absolute; top: 0; left: 284px"><a
										href="#"> <i class="fa fa-shopping-cart"
											aria-hidden="true"></i> <span id="checkout_items"
											class="checkout_items">2</span>
									</a></li>
								</ul>
								<div class="hamburger_container">
									<i class="fa fa-bars" aria-hidden="true"></i>
								</div>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</header>

		
		<div class="hamburger_menu">
			<div class="hamburger_close">
				<i class="fa fa-times" aria-hidden="true"></i>
			</div>
			<div class="hamburger_menu_content text-right">
				<ul class="menu_top_nav">
					<li class="menu_item has-children"><a href="#"> Tài khoản
							<i class="fa fa-angle-down"></i>
					</a>
						<ul class="menu_selection">
							<li><a href="#"><i class="fa fa-sign-in"
									aria-hidden="true"></i>Đăng nhập</a></li>
							<li><a href="#"><i class="fa fa-user-plus"
									aria-hidden="true"></i>Đăng ký</a></li>
						</ul></li>
					<li class="menu_item"><a href="#">Trang chủ</a></li>
					<li class="menu_item"><a href="#">Sản phẩm</a></li>
					<li class="menu_item"><a href="#">Lịch sử mua hàng</a></li>
					<li class="menu_item"><a href="#">Thanh toán</a></li>
				</ul>
			</div>
		</div>

		<!-- Slider -->

		

	

		<!-- Blogs -->

		<div class="container single_product_container">
        <div class="row">
          <div class="col">
            <!-- Breadcrumbs -->

            <div class="breadcrumbs d-flex flex-row align-items-center">
              <ul>
                <li><a href="index.html">Home</a></li>
                <li>
                  <a href="categories.html"
                    ><i class="fa fa-angle-right" aria-hidden="true"></i
                    >Men's</a
                  >
                </li>
                <li class="active">
                  <a href="#"
                    ><i class="fa fa-angle-right" aria-hidden="true"></i>Single
                    Product</a
                  >
                </li>
              </ul>
            </div>
          </div>
        </div>
<%
              		sanphambean sp = (sanphambean)request.getAttribute("sp");
              		if(sp != null){
              %>
        <div class="row">
          <div class="col-lg-7">
            <div class="single_product_pics">
              <div class="row">
                <div class="col-lg-9 image_col order-lg-2 order-1">
                  <div class="single_product_image">
                    <div
                      class="single_product_image_background"
                      style="background-image: url(<%=sp.getAnh() %>)"
                    ></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <div class="col-lg-5">
            <div class="product_details">
              <div class="product_details_title">
                <h2><%=sp.getTensanpham() %></h2>
                <p>
                  <%=sp.getMota()%>
                </p>
              </div>
              <div
                class="free_delivery d-flex flex-row align-items-center justify-content-center"
              >
                <span class="ti-truck"></span><span>free delivery</span>
              </div>
              
              <div class="original_price">$629.99</div>
              <div class="product_price">$<%=sp.getGia() %></div>
              <ul class="star_rating">
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
              </ul>
              <div class="product_color">
                <span>Color:<%=sp.getMau() %></span>
              </div>
              <form action="GioController?msp=<%=sp.getMasanpham()%>&tsp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>&anh=<%=sp.getAnh()%>&mau=<%=sp.getMau()%>" method="post">
              	<div
                class="quantity d-flex flex-column flex-sm-row align-items-sm-center"
              >
                <span>Quantity:</span>
                <div style="margin-left: 20px">
                 
                  <input type="number" min="1" name="txtSoluong" class="form-control text-center"
								style="width: 130px;text-align: center"
								value=1>
                  
                </div>
                <button type="submit" class="red_button add_to_cart_button" style="border: none;color: #fff">
                  Thêm vào giỏ
                </button>
                <div
                  class="product_favorite d-flex flex-column align-items-center justify-content-center"
                ></div>
              </div>
              </form>
              
            </div>
          </div>
         
        </div>
         <%} %>
      </div>
      	<!-- Benefit -->

		<div class="benefit">
			<div class="container">
				<div class="row benefit_row">
					<div class="col-lg-3 benefit_col">
						<div class="benefit_item d-flex flex-row align-items-center">
							<div class="benefit_icon">
								<i class="fa fa-truck" aria-hidden="true"></i>
							</div>
							<div class="benefit_content">
								<h6>free shipping</h6>
								<p>Suffered Alteration in Some Form</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 benefit_col">
						<div class="benefit_item d-flex flex-row align-items-center">
							<div class="benefit_icon">
								<i class="fa fa-money" aria-hidden="true"></i>
							</div>
							<div class="benefit_content">
								<h6>cach on delivery</h6>
								<p>The Internet Tend To Repeat</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 benefit_col">
						<div class="benefit_item d-flex flex-row align-items-center">
							<div class="benefit_icon">
								<i class="fa fa-undo" aria-hidden="true"></i>
							</div>
							<div class="benefit_content">
								<h6>45 days return</h6>
								<p>Making it Look Like Readable</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 benefit_col">
						<div class="benefit_item d-flex flex-row align-items-center">
							<div class="benefit_icon">
								<i class="fa fa-clock-o" aria-hidden="true"></i>
							</div>
							<div class="benefit_content">
								<h6>opening all week</h6>
								<p>8AM - 09PM</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer -->

		<footer class="footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div
							class="footer_nav_container d-flex flex-sm-row flex-column align-items-center justify-content-lg-start justify-content-center text-center">
							<ul class="footer_nav">
								<li><a href="#">Blog</a></li>
								<li><a href="#">FAQs</a></li>
								<li><a href="contact.html">Contact us</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6">
						<div
							class="footer_social d-flex flex-row align-items-center justify-content-lg-end justify-content-center">
							<ul>
								<li><a href="#"><i class="fa fa-facebook"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-skype"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest"
										aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="footer_nav_container">
							<div class="cr">
								©2023 All Rights Reserverd. Made with <i class="fa fa-heart-o"
									aria-hidden="true"></i> by <a href="#">Mclib</a> &amp;
								distributed by <a href="#">Mcuong</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>

	 <script src="js/jquery-3.2.1.min.js"></script>
    <script src="styles/bootstrap4/popper.js"></script>
    <script src="styles/bootstrap4/bootstrap.min.js"></script>
    <script src="plugins/Isotope/isotope.pkgd.min.js"></script>
    <script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
    <script src="plugins/easing/easing.js"></script>
    <script src="plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="js/single_custom.js"></script>
</body>
</html>


