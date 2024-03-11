<%@page import="NguyenVanManhCuongbo.giohangbo"%>
<%@page import="NguyenVanManhCuongbean.khachhangbean"%>
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

<style>
        /* Add custom styles here */
    .d-flex-center {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
           
        }
        .account-sign-in {
            padding: 20px;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        .form-label {
            position: absolute;
            top: 10px;
            left: 15px;
            font-size: 14px;
            color: #999;
            transition: 0.3s;
        }
        .form-control:focus + .form-label,
        .form-control:not(:placeholder-shown) + .form-label {
            top: -18px;
            left: 5px;
            font-size: 12px;
            color: #337ab7;
        }
        .password-info {
            margin-top: 15px;
        }
        .password-info label {
            font-size: 14px;
            color: #777;
            margin-left: 5px;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
            width: 100%;
            padding: 12px;
            border-radius: 5px;
        }
        .social-signing {
            margin-top: 20px;
            text-align: center;
        }
        .social-signing-link {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 10px;
        }
        .social-signing-link a {
            display: inline-flex;
            align-items: center;
            background-color: #f4f4f4;
            color: #333;
            padding: 10px 15px;
            border-radius: 5px;
            margin: 5px;
            transition: 0.3s;
        }
        .social-signing-link a svg {
            margin-right: 10px;
        }
        .social-signing-link a:hover {
            background-color: #ddd;
            color: #007bff;
        }
    </style>
</head>

<body>
<%
	String t = request.getParameter("tbb");
	if(t != null){%>
		<script>alert('Đăng nhập sai!');</script>
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
		
		
		<div class="container d-flex-center" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="account-sign-in">
                    <h5 class="text-center">Đăng Nhập</h5>
                    <form action="DangNhapController">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder=" " name="txtun">
                            <label class="form-label">Tên đăng nhập</label>
                        </div>
                        <div class="form-group mb-0">
                            <input type="password" class="form-control" placeholder=" " name="txtpass">
                            <label class="form-label">Password</label>
                        </div>
                        <div class="password-info d-flex align-items-center justify-content-between flex-wrap">
                            <div class="password-info-left">
                                <input type="checkbox" id="showpass" class="mb-0">
                                <label for="showpass" class="mb-0">Show Password</label>
                            </div>
                            <div class="password-info-right">
                                <a href="forget-password.html">Forgot Password</a>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block mt-3"  value="dangnhap" style="border: none;">Đăng nhập</button>
                    </form>
                    <div class="social-signing">
                        <p class="text-center">or sign in with</p>
                        <div class="social-signing-link">
                            <a href="#" class="ml-0">
                                <svg id="search" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20">
                                    
                                        <path id="Path_8" data-name="Path 8"
                                                d="M4.432,144.953l-.7,2.6-2.544.054a10.017,10.017,0,0,1-.074-9.338h0l2.265.415.992,2.252a5.968,5.968,0,0,0,.056,4.018Z"
                                                transform="translate(0 -132.867)" fill="#fbbb00" />
                                            <path id="Path_9" data-name="Path 9"
                                                d="M271.233,208.176a10,10,0,0,1-3.565,9.666h0l-2.853-.146-.4-2.521a5.96,5.96,0,0,0,2.564-3.043h-5.347v-3.956h9.605Z"
                                                transform="translate(-251.408 -200.044)" fill="#518ef8" />
                                            <path id="Path_10" data-name="Path 10"
                                                d="M45.577,315.121h0a10,10,0,0,1-15.069-3.059l3.241-2.653a5.947,5.947,0,0,0,8.57,3.045Z"
                                                transform="translate(-29.317 -297.323)" fill="#28b446" />
                                            <path id="Path_11" data-name="Path 11"
                                                d="M43.889,2.3l-3.24,2.652a5.947,5.947,0,0,0-8.767,3.114L28.625,5.4h0A10,10,0,0,1,43.889,2.3Z"
                                                transform="translate(-27.506)" fill="#f14336" />
                                </svg>
                                Google
                            </a>
                            <a href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="10" height="20" viewBox="0 0 10 20">
                                    <path id="facebook" d="M138,6.875h-3.75v-2.5a1.25,1.25,0,0,1,1.25-1.25h1.25V0h-2.5a3.75,3.75,0,0,0-3.75,3.75V6.875H128V10h2.5V20h3.75V10h2.5Z" transform="translate(-128)" fill="#1976d2" />
                                </svg>
                                Facebook
                            </a>
                            <a href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24.615" height="20" viewBox="0 0 24.615 20">
                                    <path id="twitter" d="M24.615,50.368a10.521,10.521,0,0,1-2.908.8,5.018,5.018,0,0,0,2.22-2.789,10.085,10.085,0,0,1-3.2,1.222A5.046,5.046,0,0,0,12,53.048a5.2,5.2,0,0,0,.117,1.151,14.284,14.284,0,0,1-10.4-5.278,5.048,5.048,0,0,0,1.551,6.745,4.984,4.984,0,0,1-2.28-.622V55.1a5.07,5.07,0,0,0,4.043,4.958,5.037,5.037,0,0,1-1.323.166,4.462,4.462,0,0,1-.955-.086,5.094,5.094,0,0,0,4.715,3.515A10.14,10.14,0,0,1,1.208,65.8,9.453,9.453,0,0,1,0,65.735,14.207,14.207,0,0,0,7.742,68,14.264,14.264,0,0,0,22.1,53.64c0-.223-.008-.438-.018-.652A10.067,10.067,0,0,0,24.615,50.368Z" transform="translate(0 -48)" fill="#03a9f4" />
                                </svg>
                                Twitter
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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


