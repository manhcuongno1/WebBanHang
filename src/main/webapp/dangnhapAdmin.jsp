<%@page import="NguyenVanManhCuongbean.admindangnhapbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">

<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/ionicons.min.css">

<!-- Theme style -->

<link rel="stylesheet" href="AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
      folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="_all-skins.min.css">



<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

<style>
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

    .navbar {
      background-color: #343a40;
    }

    .navbar-brand {
      color: #ffffff;
      font-size: 24px;
    }

    .navbar-toggler-icon {
      background-color: #ffffff;
    }

    .navbar-dark .navbar-nav .nav-link {
      color: #ffffff;
    }

    .table {
      border-radius: 10px;
      overflow: hidden;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .table thead th {
      background-color: #343a40;
      color: #ffffff;
      font-weight: bold;
    }

    .table-hover tbody tr:hover {
      background-color: #f8f9fa;
    }

    .btn-success {
      background-color: #28a745;
      border-color: #28a745;
    }

    .btn-success:hover {
      background-color: #218838;
      border-color: #218838;
    }
    form {
        margin-bottom: 20px;
    }
    .form-group {
        margin-right: 10px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    .table-actions {
        width: 150px;
    }
    .btn {
        margin-right: 5px;
    }
.main-nav {
	font-size: 17px;
}

.sub-nav {
	font-size: 15px !important;
}

.sub-active {
	color: white !important;
}

.header__manage {
	font-size: 30px;
	margin-left: 20px;
}

/* Navbar */
.navbar {
	list-style: none;
	padding-left: 0;
	display: flex;
	flex-direction: row-reverse;
	padding-right: 20px;
}

.navbar-item {
	margin: 10px 8px;
	position: relative;
	min-height: 26px;
}

.navbar-user {
	display: flex;
	justify-items: center;
	position: relative;
}

.navbar-user-img {
	width: 22px;
	height: 22px;
	border-radius: 50%;
	border: 1px solid rgba(0, 0, 0, 0.1);
}

.navbar-user-name {
	font-size: 1.8rem;
}

.navbar-user:hover .navbar-user-menu {
	display: block;
}

.navbar-user-menu {
	position: absolute;
	z-index: 2;
	padding: 4px 0;
	top: calc(100% + 6px);
	right: 0;
	width: 160px;
	border-radius: 2px;
	background-color: white;
	list-style: none;
	box-shadow: 0 1px 2px #e0e0e0;
	display: none;
}

.navbar-user-menu:before {
	content: "";
	border-width: 17px 20px;
	border-style: solid;
	border-color: transparent transparent white transparent;
	position: absolute;
	right: 0px;
	top: -26px;
	z-index: -1;
}

.navbar-user-menu::after {
	content: "";
	display: block;
	position: absolute;
	top: -8px;
	right: 0;
	width: 60%;
	height: 8px;
}

.navbar-user-item--separate {
	border-top: 1px solid rgba(0, 0, 0, 0.05);
}

.navbar-user-item a {
	text-decoration: none;
	color: black;
	font-size: 1.6rem;
	padding: 6px 16px;
	display: block;
}

.navbar-user-item a:hover {
	color: gray;
	font-weight: 480;
}

.navbar-user-item a:first-child {
	border-top-left-radius: 2px;
	border-top-right-radius: 2px;
}

.navbar-user-item a:last-child {
	border-bottom-left-radius: 2px;
	border-bottom-right-radius: 2px;
}

.navbar-item, .navbar-item-link {
	display: inline-block;
	font-size: 1.8rem;
	color: white;
	text-decoration: none;
}

.navbar-item:hover, .navbar-icon-link:hover, .navbar-item-link:hover {
	cursor: pointer;
	color: rgba(255, 255, 255, 0.7);
}

.box {
	margin-bottom: 0;
}
/* Nav */
.nav__icon {
	margin-right: 4px;
}
</style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<%
	String t = request.getParameter("tbb");
	if(t != null){%>
		<script>alert('Đăng nhập sai!');</script>
<%}%>
	<div class="wrapper">

		<header class="main-header">
			<!-- Logo -->
			<a href="
      " class="logo"> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>Admin</b>LTE</span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<%
			admindangnhapbean x = (admindangnhapbean) session.getAttribute("dnad");
			if (x == null) {
			%>

			<ul class="navbar">

				<li class="navbar-item navbar-user"><i
					class="navbar-user-img fa-solid fa-user"></i> 
				</li>
				<li class="navbar-item navbar-item--has-notify"><a href=""
					class="navbar-item-link"> <i
						class="navbar-icon fa-solid fa-bell"></i> Thông báo
				</a></li>
			</ul>
			<%}else{ %>
				<ul class="navbar">

				<li class="navbar-item navbar-user"><i
					class="navbar-user-img fa-solid fa-user"></i> 
					
					<span
					class="navbar-user-name"><%=x.getTenDangNhap() %></span>
					<ul class="navbar-user-menu">					
						<li class="navbar-user-item navbar-user-item--separate"><a
							href="DangXuatController">Đăng xuất</a></li>
					</ul></li>
				<li class="navbar-item navbar-item--has-notify"><a href=""
					class="navbar-item-link"> <i
						class="navbar-icon fa-solid fa-bell"></i> Thông báo
				</a></li>
			</ul>
			<%} %>


		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu" data-widget="tree">
					<li class="treeview"><a href="GiaoDienChinh_admin"> <i
							class="fa fa-dashboard"></i> <span class="main-nav sub-active">Trang
								chủ</span>
					</a></li>

					<li class="treeview active"><a href="#"> <i
							class="fa fa-folder"></i> <span class="main-nav">Quản lý
								danh mục</span>
					</a>
						<ul class="treeview-menu">

							<li><a class="sub-nav" href="quanLyTaiKhoanController_admin">
									Tài khoản </a></li>
							<li><a class="sub-nav" href="quanLyChucVuController_admin">
									Chức vụ</a></li>
							<li><a class="sub-nav "
								href="quanLyNhanVienController_admin"> Nhân viên</a></li>
							<li><a class="sub-nav" href="quanLyHoaDonController_admin">
									Hóa đơn</a></li>
							<li><a class="sub-nav" href="quanLySanPhamController_admin">
									Sản phẩm</a></li>
							<li><a class="sub-nav"
								href="quanLyLoaiSanPhamController_admin"> Loại sản phẩm</a></li>
						</ul>
				</ul>

				<ul class="sidebar-menu" data-widget="tree">
					<li class="treeview active"><a href="#"> <i
							class="nav__icon fa-solid fa-chart-simple"></i> <span
							class="main-nav">Thống kê</span>
					</a>
						<ul class="treeview-menu">
							<li><a class="sub-nav"
								href="thongKeDoanhThuController_admin">Doanh thu</a></li>
							<li><a class="sub-nav" href="thongKeHoaDonController_admin">Hóa
									đơn</a></li>
						</ul></li>
				</ul>
			</section>

			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">

			<!-- Main content -->
			<div class="main__content">
				<section class="content-header">
					<h1>Dashboard</h1>

				</section>

				<!-- Main content -->
				<section class="content table-responsive">
					<!-- Small boxes (Stat box) -->
					<div class="row ">
						<div class="col-lg-3 col-xs-6 ">
							<div class="container "   >
    								<div class="container d-flex-center" style="width: 700px;">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="account-sign-in">
                    <h5 class="text-center">Đăng Nhập</h5>
                    <form action="dangnhapAdminController">
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
							</div>
							</div>
						</div>
					</div>
			</div>
		</div>
		</section>
		<!-- right col -->
	</div>
	<!-- /.row (main row) -->

	</section>
	</div>
	</div>
</html>