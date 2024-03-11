<%@page import="NguyenVanManhCuongbo.giohangbo"%>
<%@page import="NguyenVanManhCuongbean.khachhangbean"%>
<%@page import="NguyenVanManhCuongbean.lichsubean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="NguyenVanManhCuongbean.sanphambean"%>
<%@page import="NguyenVanManhCuongbean.loaibean"%>
<%@page import="java.util.ArrayList"%>

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
<link rel="stylesheet" href="styles/main.css" />
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
									<li class="account">
										<%
										khachhangbean x = (khachhangbean) session.getAttribute("dn");
										if (x == null) {
										%> <a href="#"> <i class="fa fa-user" aria-hidden="true"></i>
											Tài khoản của tôi
									</a>
										<ul class="account_selection">
											<li><a href="DangNhapController"><i
													class="fa fa-sign-in" aria-hidden="true"></i>Đăng nhập</a></li>
											<li><a href="DangKyController"><i
													class="fa fa-user-plus" aria-hidden="true"></i>Đăng ký</a></li>
										</ul> <%
 } else {
 %> <a href="#"> <i class="fa fa-user" aria-hidden="true"></i> Xin
											chào <%=x.getHoten()%></a>
										<ul class="account_selection">
											<li><a href="DangXuatController"><i
													class="fa fa-sign-in" aria-hidden="true"></i>Đăng xuất</a></li>

										</ul> <%
 }
 %>
									</li>

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
									<li><a href="trangchuController">Trang chủ</a></li>
									<li><a href="sanphamController">Sản phẩm</a></li>
									<li><a href="lichsuController">Lịch sử mua hàng</a></li>
									<li><a href="xacnhanController">Xác nhận mua hàng</a></li>
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

								<%
									giohangbo g = (giohangbo) session.getAttribute("gh");
									%>
									<li class="checkout"
										style="position: absolute; top: 0; left: 284px"><a
										href="GioController"> <i class="fa fa-shopping-cart"
											aria-hidden="true"></i> <span id="checkout_items"
											class="checkout_items"><%=(g != null) ? g.ds.size() : 0%></span>
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
		<div class="container" style="margin-top: 170px">
			<h1 class="mb-4 text-center" style="font-size: 38px">Lịch sử mua
				hàng</h1>
			<table class="table  table-hover">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Mã KH</th>
						<th scope="col">Mã sản phẩm</th>
						<th scope="col">Tên sản phẩm</th>
						<th scope="col">Số lượng</th>
						<th scope="col">Giá</th>
						<th scope="col">Thành tiền</th>
						<th scope="col">Đã Mua</th>
						<th scope="col">Ngày Mua</th>
					</tr>
				</thead>
				<tbody>
					 <%  ArrayList<lichsubean> dslsmh=(ArrayList<lichsubean>)request.getAttribute("dsls");
                		 for (lichsubean lsh : dslsmh) { %>
                        <tr class=<%=lsh.getDamua() ? "table-success":"table-danger" %>>
                            <td ><%= lsh.getMakh() %></td>
                            <td ><%= lsh.getmasanpham()%></td>
                            <td ><%= lsh.gettensanpham() %></td>
                            <td ><%= lsh.getSoluong() %></td>
                            <td ><%= lsh.getGia() %></td>
                            <td ><%= lsh.getThanhtien() %></td>
                            <td ><%= lsh.getDamua() ? "Đã thanh toán" : "Chưa thanh toán" %></td>
                            <td ><%= lsh.getNgaymua() %></td>
                        </tr>
                        <% } %>

				</tbody>
			</table>
		</div>
		<!-- Footer -->

		<footer class="footer" style="margin-top: 160px">
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


