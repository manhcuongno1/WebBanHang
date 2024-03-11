<%@page import="NguyenVanManhCuongbean.admindangnhapbean"%>
<%@page import="NguyenVanManhCuongbean.loaibean"%>
<%@page import="java.util.ArrayList"%>
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

    form {
        margin-bottom: 20px;
    }
    .form-group {
        margin-right: 10px;
    }
    table {
        width: 70%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #000;
        color: #fff;
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
String maloai = (String)request.getAttribute("maloai");
String tenloai = (String)request.getAttribute("tenloai");
%>
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
					
					<ul class="navbar-user-menu">					
						<li class="navbar-user-item navbar-user-item--separate"><a
							href="dangnhapAdminController">Đăng nhập</a></li>
					</ul></li>
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
							href="dangxuatAdminController">Đăng xuất</a></li>
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
					<li class="treeview"><a href="admintrangchuController"> <i
							class="fa fa-dashboard"></i> <span class="main-nav sub-active">Trang
								chủ</span>
					</a></li>

					<li class="treeview active"><a href="#"> <i
							class="fa fa-folder"></i> <span class="main-nav">Quản lý
								danh mục</span>
					</a>
						<ul class="treeview-menu">					
							
							
							<li><a class="sub-nav" href="adminsanphamController">
									Sản phẩm</a></li>
							<li><a class="sub-nav"
								href="adminloaicontroller"> Loại sản phẩm</a></li>
						</ul>
				</ul>

				<ul class="sidebar-menu" data-widget="tree">
					<li class="treeview active"><a href="#">  <span
							class="main-nav">Xác nhận</span>
					</a>
						<ul class="treeview-menu">
							<li><a class="sub-nav" href="adminxacnhanController">
									Xác nhận hóa đơn</a></li>
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
				<section class="content">
					<!-- Small boxes (Stat box) -->
					<div class="row">
						<div class="col-lg-3 col-xs-6">
								<div class="container" style="width: 800px">
    <h1>Loại Beans</h1>
    <form action="" method="post" class="form-inline">
        <div class="form-group">
            <label for="txtmaloai">Mã loại:</label>
            <input type="text" id="txtmaloai" name="txtmaloai" class="form-control" value="<%= (maloai==null ? "" : maloai) %>">
        </div>
        <div class="form-group">
            <label for="txttenloai">Tên loại:</label>
            <input type="text" id="txttenloai" name="txttenloai" class="form-control" value="<%= (tenloai==null ? "" : tenloai) %>">
        </div>
        <button type="submit" name="butadd" class="btn btn-primary">Add</button>
        <button type="submit" name="butsua" class="btn btn-primary">Update</button>
    </form>
    <table class="table table-hover ">
        <thead>
            <tr >
                <th >Mã loại</th>
                <th>Tên loại</th>
                <th >Actions</th>
            </tr>
        </thead>
        <tbody>
           
           <% ArrayList<loaibean> ds = (ArrayList<loaibean>)request.getAttribute("ds");
            for (loaibean loai : ds) { %>
            <tr>
                <td><%= loai.getMaloai() %></td>
                <td><%= loai.getTenloai() %></td>
                <td class="">
                    <a href="adminloaicontroller?mll=<%= loai.getMaloai() %>&tab=select" class="btn btn-info">Select</a>
                    <a href="adminloaicontroller?mll=<%= loai.getMaloai() %>&tab=delete" class="btn btn-danger">Delete</a>
                </td>
            </tr>
            <% } %>
           
        </tbody>
    </table>
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