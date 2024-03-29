<%@page import="NguyenVanManhCuongbean.khachhangbean"%>
<%@page import="NguyenVanManhCuongbean.sanphambean"%>
<%@page import="NguyenVanManhCuongbean.loaibean"%>
<%@page import="java.util.ArrayList"%>
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
<link rel="stylesheet" type="text/css" href="styles/main_styles.css" />
<link rel="stylesheet" type="text/css" href="styles/responsive.css" />
<link rel="stylesheet" href="trangchu2.css" />
</head>

<body>
	<%
                    	String dk = (String)request.getAttribute("dk");
                    	if (dk != null) {
                    %>
	<script>
		alert('Đăng ký thành công!');
	</script>
	<%}%>
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
							<%   khachhangbean x = (khachhangbean)session.getAttribute("dn");
                   						 if (x == null) {
                    				%>
								<ul class="top_nav_menu">
									
									<li class="account">
									<a href="#"> 
									<i class="fa fa-user" aria-hidden="true"></i> Tài khoản <!-- <i class="fa fa-angle-down"></i> -->
									</a>
										<ul class="account_selection">
											<li><a href="DangNhapController"><i class="fa fa-sign-in"
													aria-hidden="true"></i>Đăng nhập</a></li>
											<li><a href="DangKyController"><i
													class="fa fa-user-plus" aria-hidden="true"></i>Đăng ký</a></li>
										</ul></li>
								</ul>		
										<%}else{ %>
									<ul>
										<li class="account">
									<a href="#"> 
									<i class="fa fa-user" aria-hidden="true"></i> Xin chào <%=x.getHoten()%><!-- <i class="fa fa-angle-down"></i> -->
									</a>
										<ul class="account_selection">
											<li><a href="DangXuatController"><i class="fa fa-sign-out"
													aria-hidden="true"></i>Đăng xuất</a></li>
											
										</ul></li>
								</ul>
								<%} %>
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
											<input type="text" placeholder="Tìm kiếm" name="txttim" />

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

		<div class="fs_menu_overlay"></div>
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

		<div class="main_slider"
			style="background-image: url(images/slider_1.jpg)">
			<div class="container fill_height">
				<div class="row align-items-center fill_height">
					<div class="col">
						<div class="main_slider_content">
							<h6>Bộ sưu tập mùa xuân / mùa hè 2023</h6>
							<h1>Giảm tới 30% cho mặt hàng mới</h1>
							<div class="red_button shop_now_button">
								<a href="#">mua ngay</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Banner -->

		<div class="banner">
			<div class="container">
				<div class="row">
					<%
								ArrayList<loaibean> l = (ArrayList<loaibean>) request.getAttribute("dsloai");
								for (loaibean loai : l) {
				  %>
					<div class="col-md-4">
						<div class="banner_item align-items-center"
							style="background-image: url(images/banner_<%=(loai.getMaloai().equals("nu"))?"1":(loai.getMaloai().equals("pk")?"2":"3") %>.jpg)">
							<div class="banner_category">

								<a href="sanphamController?ml=<%=loai.getMaloai()%>"><%=loai.getTenloai() %></a>
							</div>
						</div>
					</div>
					<%} %>


				</div>
			</div>
		</div>

		<!-- New Arrivals -->

		<div class="new_arrivals">
			<div class="container">
				<div class="row">
					<div class="col text-center">
						<div class="section_title new_arrivals_title">
							<h2>Mặt hàng mới</h2>
						</div>
					</div>
				</div>
				<div class="row align-items-center">
					<div class="col text-center">
						<div class="new_arrivals_sorting">
							<ul
								class="arrivals_grid_sorting clearfix button-group filters-button-group">
								<li
									class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center active is-checked"
									data-filter="*">all</li>
								<%
								ArrayList<loaibean> t = (ArrayList<loaibean>) request.getAttribute("dsloai");
								for (loaibean loai : t) {
				  %>
								<li
									class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center"
									data-filter=".<%=(loai.getMaloai().equals("nam")) ? "men":((loai.getMaloai().equals("nu"))? "women":"phukien") %>">
									<%=loai.getTenloai() %>
								</li>

								<%} %>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="product-grid"
							data-isotope='{ "itemSelector": ".product-item", "layoutMode": "fitRows" }'>
							<!-- Product 1  -->
							<%

					                ArrayList<sanphambean> ds = (ArrayList<sanphambean>) request.getAttribute("dsm");
					                int n = ds.size();
					                for (int i = 0; i < n; i++) {
						                sanphambean s = ds.get(i);
				 			 %>
							<div
								class="product-item <%=(s.getMaloai().equals("nam")) ? "men":((s.getMaloai().equals("nu"))? "women":"phukien")%>">
								<div class="product discount product_filter">
									<div class="product_image">
										<img src="<%=s.getAnh() %>" alt="" />
									</div>
									<div class="favorite favorite_left"></div>
									<div
										class="product_bubble product_bubble_<%=(i == 1 || i == 4 || i ==7? "left":"right") %> product_bubble_<%=(i == 1||i == 4 || i ==7? "green":"red") %> d-flex flex-column align-items-center">
										<span><%=(i == 1 || i == 4 || i ==7) ? "new":((i == 2 || i == 5 || i == 9) ? "sale":"-$20") %></span>
									</div>
									<div class="product_info">
										<h6 class="product_name">
											<a href="chitietsanphamController?masp=<%=s.getMasanpham()%>"><%=s.getTensanpham() %></a>
										</h6>
										<div class="product_price">
											<%=s.getGia() %>
											<%if(i != 1 && i != 4 && i!= 7&&i != 2 && i != 5 && i!= 9) {%>
											<span>$590.00</span>
											<%} %>
										</div>
									</div>
								</div>
								<div class="red_button add_to_cart_button">
									<a href="#">Thêm vào giỏ</a>
								</div>
							</div>
							<%} %>

						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Deal of the week -->

		<div class="deal_ofthe_week">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-6">
						<div class="deal_ofthe_week_img">
							<img src="images/deal_ofthe_week.png" alt="" />
						</div>
					</div>
					<div class="col-lg-6 text-right deal_ofthe_week_col">
						<div
							class="deal_ofthe_week_content d-flex flex-column align-items-center float-right">
							<div class="section_title">
								<h2>Khuyến mãi còn</h2>
							</div>
							<ul class="timer">
								<li
									class="d-inline-flex flex-column justify-content-center align-items-center">
									<div id="day" class="timer_num">03</div>
									<div class="timer_unit">Ngày</div>
								</li>
								<li
									class="d-inline-flex flex-column justify-content-center align-items-center">
									<div id="hour" class="timer_num">15</div>
									<div class="timer_unit">Giờ</div>
								</li>
								<li
									class="d-inline-flex flex-column justify-content-center align-items-center">
									<div id="minute" class="timer_num">45</div>
									<div class="timer_unit">Phút</div>
								</li>
								<li
									class="d-inline-flex flex-column justify-content-center align-items-center">
									<div id="second" class="timer_num">23</div>
									<div class="timer_unit">Giây</div>
								</li>
							</ul>
							<div class="red_button deal_ofthe_week_button">
								<a href="#">Mua ngay</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Best Sellers -->

		<div class="best_sellers">
			<div class="container">
				<div class="row">
					<div class="col text-center">
						<div class="section_title new_arrivals_title">
							<h2>Bán chạy</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="product_slider_container">
							<div class="owl-carousel owl-theme product_slider">
								<!-- Slide 1 -->
								<%

					                ArrayList<sanphambean> dsbanchay = (ArrayList<sanphambean>) request.getAttribute("dsbanchay");
					                int nn = dsbanchay.size();
					                for (int i = 0; i < nn; i++) {
						                sanphambean ss = dsbanchay.get(i);
				 			 %>
								<div class="owl-item product_slider_item">
									<div class="product-item">
										<div class="product discount product_filter">
											<div class="product_image">
												<img src="<%=ss.getAnh() %>" alt="" />
											</div>
											<div class="favorite favorite_left"></div>
											<div
												class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center">
												<span>-$20</span>
											</div>
											<div class="product_info">
												<h6 class="product_name">
													<a href=""><%=ss.getTensanpham() %></a>
												</h6>
												<div class="product_price">
													<%=ss.getGia() %><span>$590.00</span>
												</div>
											</div>
										</div>
										<div class="red_button add_to_cart_button">
											<a href="#">Thêm vào giỏ</a>
										</div>
									</div>
								</div>
								<%} %>



								<!-- Slide 10 -->


							</div>

							<!-- Slider Navigation -->

							<div
								class="product_slider_nav_left product_slider_nav d-flex align-items-center justify-content-center flex-column">
								<i class="fa fa-chevron-left" aria-hidden="true"></i>
							</div>
							<div
								class="product_slider_nav_right product_slider_nav d-flex align-items-center justify-content-center flex-column">
								<i class="fa fa-chevron-right" aria-hidden="true"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
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

		<!-- Blogs -->

		<div class="blogs">
			<div class="container">
				<div class="row blogs_container">
					<div class="col-lg-4 blog_item_col">
						<div class="blog_item">
							<div class="blog_background"
								style="background-image: url(images/blog_1.jpg)"></div>
						</div>
					</div>
					<div class="col-lg-4 blog_item_col">
						<div class="blog_item">
							<div class="blog_background"
								style="background-image: url(images/blog_2.jpg)"></div>
						</div>
					</div>
					<div class="col-lg-4 blog_item_col">
						<div class="blog_item">
							<div class="blog_background"
								style="background-image: url(images/blog_3.jpg)"></div>
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
	<script src="js/custom.js"></script>
</body>
</html>


