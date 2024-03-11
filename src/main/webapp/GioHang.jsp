<%@page import="NguyenVanManhCuongbo.giohangbo"%>
<%@page import="NguyenVanManhCuongbean.khachhangbean"%>
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
<link rel="stylesheet" type="text/css" href="styles/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="styles/responsive.css" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<link rel="stylesheet" href="trangchu2.css" />
<link rel="stylesheet" type="text/css" href="styles/main_styles.css" />

<script defer
	src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</head>
<body>
<div class="super_container">
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
									<%   khachhangbean x = (khachhangbean)session.getAttribute("dn");
                   						 if (x == null) {
                    				%>
									<a href="#"> <i class="fa fa-user" aria-hidden="true"></i> Tài khoản của tôi</a>
										<ul class="account_selection">
											<li><a href="DangNhapController"><i class="fa fa-sign-in"
													aria-hidden="true"></i>Đăng nhập</a></li>
											<li><a href="DangKyController"><i class="fa fa-user-plus"
													aria-hidden="true"></i>Đăng ký</a></li>
										</ul>
									<%}else{ %>
										<a href="#"> <i class="fa fa-user" aria-hidden="true"></i> Xin chào <%=x.getHoten() %></a>
										<ul class="account_selection">
											<li><a href="DangXuatController"><i class="fa fa-sign-in"
													aria-hidden="true"></i>Đăng xuất</a></li>
											
										</ul>
									<%} %>	
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
									<%
									giohangbo g = (giohangbo) session.getAttribute("gh");
									%>
									<li class="checkout"
										style="position: absolute; top: 0; left: 284px"><a
										href="#"> <i class="fa fa-shopping-cart"
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
	<section class="cart text-center" style="margin-top: 70px">
	<h2 class="mt-5 mb-2">Your Shopping Cart</h2>
			<%
					//Hien thi do trong session: gh
					if (session.getAttribute("gh") != null) {
						giohangbo gk = (giohangbo) session.getAttribute("gh");
						
						int sh = gk.ds.size();
						
					
			%>
		<div class="container">
			<div class="row">
				<div class="col-12 text-center">
					
					<p class="mb-5">
						<span class="primary-color"><%=gk.ds.size() %></span> Items in your cart
					</p>
					<table id="cart" class="table table-condensed">
						<thead>
							<tr>
								<th style="width: 60%">Product</th>
								<th style="width: 12%">Price</th>
								<th style="width: 10%">Quantity</th>
								<th style="width: 16%"></th>
							</tr>
						</thead>
						<tbody>
						<% for (int i = 0; i < sh; i++) {%>
							<tr>
							<form method="post"
							action="SuaController?ms=<%=gk.ds.get(i).getMasanpham()%>">
								<td data-th="Product">
									<div class="row">
										<div class="col-md-3 text-left">
											<img src="<%=gk.ds.get(i).getAnh() %>" alt=""
												class="img-fluid" />
										</div>
										<div class="col-md-9 text-left mt-sm-2">
											<h4><%=gk.ds.get(i).getTensanpham() %></h4>
											<p>Color:<%=gk.ds.get(i).getMau() %></p>
										</div>
									</div>
								</td>
								<td data-th="Price"><%=gk.ds.get(i).getThanhtien() %></td>
								
								<td><input type="number" min="1" name="txtSoluong" class="form-control text-center"
								style="width: 100px;text-align: center"
								value=<%=gk.ds.get(i).getSoluong()%>></td>
								<td class="actions" >
									<div class="text-right">
										<button type="submit" class="btn btn-white btn-md mb-2">
											<i class="fas fa-sync"></i>
										</button>
										<a href="xoagioController?ms=<%=gk.ds.get(i).getMasanpham()%>" class="btn btn-white btn-md mb-2">
											<i class="fas fa-trash"></i>
										</a>
									</div>
								</td>
							</form>
								
							</tr>	
							<%} %>	
						</tbody>
					</table>
					<div class="float-right text-right">
						<h4>Tổng tiền:</h4>
						<h1>$<%=gk.Tong() %></h1>
						<p>(Free Delivery)</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6 mb-3 mb-m-1 text-md-left">
					<a href="sanphamController" class="btn btn-info btn-lg pl-5 pr-5"><i
						class="fas fa-arrow-left mr-2"></i> Tiếp tục mua sắm</a>
						<a href="XoaTatCaController" class="btn btn-danger btn-lg pl-5 pr-5"> <i class="fas fa-trash"></i>  xóa giỏ</a>
				</div>
				<div class="col-sm-6 text-md-right">
					<a href="xacnhanController" class="btn btn-primary btn-lg pl-5 pr-5">Xác nhận</a>
				</div>
			</div>
		</div>
		<%} %>
	</section>
	</div>

	<div class="divider"></div>

	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="styles/bootstrap4/popper.js"></script>
	<script src="styles/bootstrap4/bootstrap.min.js"></script>
	<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
	<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="plugins/easing/easing.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>
