<%@page import="NguyenVanManhCuongbean.admindangnhapbean"%>
<%@page import="NguyenVanManhCuongbean.sanphambean"%>
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
.container {
	padding: 20px;
	background-color: #f8f9fa;
	border-radius: 10px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
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
	border: 1px solid #e0e0e0;
	padding: 12px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}

.table-actions {
	width: 150px;
}

.btn {
	margin-right: 10px;
	padding: 8px 15px;
}

.container .row {
	margin-bottom: 20px;
}

.container form {
	margin-bottom: 20px;
}

.container form input[type="text"], .container form input[type="file"],
	.container form input[type="submit"] {
	margin-bottom: 10px;
	width: 100%;
	padding: 10px;
	border: 1px solid #e0e0e0;
	border-radius: 4px;
}

.container form input[type="file"] {
	display: block;
}

.container .table img.thumbnail {
	height: 50px;
	width: 50px;
}

.container .table th, .container .table td {
	padding: 12px;
	border: 1px solid #e0e0e0;
}

.container .table th {
	background-color: #f2f2f2;
}

.container .btn-primary {
	margin-top: 10px;
	background-color: #007bff;
	border-color: #007bff;
}

.container .btn-primary:hover {
	background-color: #0056b3;
	border-color: #0056b3;
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
							<div class="container" style="width: 900px">
								<div class="row">
									<%
									request.setCharacterEncoding("utf-8");
									response.setCharacterEncoding("utf-8");
									%>
									<form method="post" action="adminsanphamController"
										enctype='multipart/form-data'>

										Mã sản phẩm: <input type="text" name="txtmasp"
											value="<%=request.getAttribute("masanpham") == null ? "" : request.getAttribute("masanpham")%>">
										<br> Tên sản phẩm: <input type="text" name="txttensp"
											value="<%=request.getAttribute("tensanpham") == null ? "" : request.getAttribute("tensanpham")%>">
										<br> Số lượng: <input type="text" name="txtsl"
											value="<%=request.getAttribute("soluong") == null ? "" : request.getAttribute("soluong")%>">
										<br> Giá: <input type="text" name="txtgia"
											value="<%=request.getAttribute("gia") == null ? "" : request.getAttribute("gia")%>">
										<br> Mã loại: <input type="text" name="txtmaloai"
											value="<%=request.getAttribute("maloai") == null ? "" : request.getAttribute("maloai")%>">
										<br> Màu: <input type="text" name="txtmau"
											value="<%=request.getAttribute("mau") == null ? "" : request.getAttribute("mau")%>">
										<br> Link ảnh: <input type="text" name="txtanh"
											value="<%=request.getAttribute("anh") == null ? "" : request.getAttribute("anh")%>">
										file: <input type="file" name="txtfile"><br> <br>Ngày
										nhập hàng: <input type="text" name="txtngaynhap"
											value="<%=request.getAttribute("ngaynhap") == null ? "" : request.getAttribute("ngaynhap")%>">
										<br>Mô tả: <input type="text" name="txtmota"
											value="<%=request.getAttribute("mota") == null ? "" : request.getAttribute("mota")%>">

										<br> <input type="submit" value="Add" name="butadd"
											class="btn btn-primary"> <input type="submit"
											value="Update" name="butupdate" class="btn btn-primary">
									</form>
								</div>
								<table class="table table-hover">
									<thead>

										<tr>
											<th>Ảnh</th>
											<th>Mã Áo Quần</th>
											<th>Tên áo quần</th>
											<th>Số lượng tồn</th>
											<th>Giá</th>
											<th>Mã loại</th>
											<th>Mô tả</th>
											<th>Màu</th>
											<th>Ngày nhập</th>
											<th>Actions</th>
										</tr>
									</thead>
									<tbody>
										<%
										ArrayList<sanphambean> dssp = (ArrayList<sanphambean>) request.getAttribute("dssanpham");
										for (sanphambean sp : dssp) {
										%>
										<tr>
											<td><img alt="" src="<%=sp.getAnh()%>"
												style="height: 50px; width: 50px"></td>
											<td><%=sp.getMasanpham()%></td>
											<td><%=sp.getTensanpham()%></td>
											<td><%=sp.getSoluong()%></td>
											<td><%=sp.getGia()%></td>
											<td><%=sp.getMaloai()%></td>
											<td><%=sp.getMota()%></td>
											<td><%=sp.getMau()%></td>
											<td><%=sp.getNgaynhap()%></td>


											<td class=""><a
												href="adminsanphamController?txtmasp=<%=sp.getMasanpham()%>&txttensp=<%=sp.getTensanpham()%>&txtsl=<%=sp.getSoluong()%>&txtgia=<%=sp.getGia()%>&txtmota=<%=sp.getMota()%>&txtmau=<%=sp.getMau()%>&txtngaynhap=<%=sp.getNgaynhap()%>&txtmaloai=<%=sp.getMaloai()%>&txtanh=<%=sp.getAnh()%>&tab=select"
												class="btn btn-info">Select</a> <a
												href="adminsanphamController?txtmasp=<%=sp.getMasanpham()%>&tab=delete"
												class="btn btn-danger">Delete</a></td>

										</tr>
										<%
										}
										%>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>

		<!-- right col -->
	</div>
	<!-- /.row (main row) -->

	</section>
	</div>
	</div>
</html>