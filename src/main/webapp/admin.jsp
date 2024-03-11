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
<link rel="stylesheet" href="style.css">


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
	String haydn = (String) request.getAttribute("haydn");
	if (haydn != null) {
	%>
	<script>
		alert('Vui lòng đăng nhập!');
	</script>
	<%
	}
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
							<!-- small box -->
							<div class="small-box bg-aqua">
								<div class="inner">
									<h3>150</h3>

									<p>New Orders</p>
								</div>
								<div class="icon">
									<i class="ion ion-bag"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-xs-6">
							<!-- small box -->
							<div class="small-box bg-green">
								<div class="inner">
									<h3>
										53<sup style="font-size: 20px">%</sup>
									</h3>

									<p>Bounce Rate</p>
								</div>
								<div class="icon">
									<i class="ion ion-stats-bars"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-xs-6">
							<!-- small box -->
							<div class="small-box bg-yellow">
								<div class="inner">
									<h3>44</h3>

									<p>User Registrations</p>
								</div>
								<div class="icon">
									<i class="ion ion-person-add"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-xs-6">
							<!-- small box -->
							<div class="small-box bg-red">
								<div class="inner">
									<h3>65</h3>

									<p>Unique Visitors</p>
								</div>
								<div class="icon">
									<i class="ion ion-pie-graph"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
					</div>
					<!-- /.row -->
					<!-- Main row -->
					<div class="row">
						<!-- Left col -->
						<section class="col-lg-7 connectedSortable">
							<!-- Custom tabs (Charts with tabs)-->
						
							<!-- /.nav-tabs-custom -->

							<!-- Chat box -->
							<div class="box box-success">
								<div class="box-header">
									<i class="fa fa-comments-o"></i>

									<h3 class="box-title">Chat</h3>

								
								</div>
								<div class="box-body chat" id="chat-box">
									<!-- chat item -->
									<div class="item">
										<img
											src="images/banner_3.jpg"
											alt="user image" class="online">

										<p class="message">
											<a href="#" class="name"> <small
												class="text-muted pull-right"><i
													class="fa fa-clock-o"></i> 2:15</small> Mike Doe
											</a> I would like to meet you to discuss the latest news about
											the arrival of the new theme. They say it is going to be one
											the best themes on the market
										</p>
									
										<!-- /.attachment -->
									</div>
									<!-- /.item -->
									<!-- chat item -->
									<div class="item">
										<img
											src="images/banner_2.jpg"
											alt="user image" class="offline">

										<p class="message">
											<a href="#" class="name"> <small
												class="text-muted pull-right"><i
													class="fa fa-clock-o"></i> 5:15</small> Alexander Pierce
											</a> I would like to meet you to discuss the latest news about
											the arrival of the new theme. They say it is going to be one
											the best themes on the market
										</p>
									</div>
									<!-- /.item -->
									<!-- chat item -->
									<div class="item">
										<img
											src="images/banner_1.jpg"
											alt="user image" class="offline">

										<p class="message">
											<a href="#" class="name"> <small
												class="text-muted pull-right"><i
													class="fa fa-clock-o"></i> 5:30</small> Susan Doe
											</a> I would like to meet you to discuss the latest news about
											the arrival of the new theme. They say it is going to be one
											the best themes on the market
										</p>
									</div>
									<!-- /.item -->
								</div>
								<!-- /.box-header -->												
							</div>
							<!-- /.box -->

							<!-- quick email widget -->
							<div class="box box-info">
								<div class="box-header">
									<i class="fa fa-envelope"></i>

									<h3 class="box-title">Quick Email</h3>
									
								</div>
								<div class="box-body">
									<form action="#" method="post">
										<div class="form-group">
											<input type="email" class="form-control" name="emailto"
												placeholder="Email to:">
										</div>
										<div class="form-group">
											<input type="text" class="form-control" name="subject"
												placeholder="Subject">
										</div>
										<div>
											<textarea class="textarea" placeholder="Message"
												style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
										</div>
									</form>
								</div>
								
							</div>

						</section>
						<!-- /.Left col -->
						<!-- right col (We are only adding the ID to make the widgets sortable)-->
						<section class="col-lg-5 connectedSortable">
							<!-- Calendar -->
							<div class="box box-solid bg-green-gradient">
								<div class="box-header">
									<i class="fa fa-calendar"></i>
									<h3 class="box-title">Calendar</h3>	
									<!-- /. tools -->
								</div>
								<!-- /.box-header -->
								<div class="box-body no-padding">
									<!--The calendar -->
									<div id="calendar" style="width: 100%"></div>
								</div>
								<!-- /.box-body -->
								<div class="box-footer text-black">
									<div class="row">
										<div class="col-sm-6">
											<!-- Progress bars -->
											<div class="clearfix">
												<span class="pull-left">Task #1</span> <small
													class="pull-right">90%</small>
											</div>
											<div class="progress xs">
												<div class="progress-bar progress-bar-green"
													style="width: 90%;"></div>
											</div>

											<div class="clearfix">
												<span class="pull-left">Task #2</span> <small
													class="pull-right">70%</small>
											</div>
											<div class="progress xs">
												<div class="progress-bar progress-bar-green"
													style="width: 70%;"></div>
											</div>
										</div>
										<!-- /.col -->
										<div class="col-sm-6">
											<div class="clearfix">
												<span class="pull-left">Task #3</span> <small
													class="pull-right">60%</small>
											</div>
											<div class="progress xs">
												<div class="progress-bar progress-bar-green"
													style="width: 60%;"></div>
											</div>

											<div class="clearfix">
												<span class="pull-left">Task #4</span> <small
													class="pull-right">40%</small>
											</div>
											<div class="progress xs">
												<div class="progress-bar progress-bar-green"
													style="width: 40%;"></div>
											</div>
										</div>
										<!-- /.col -->
									</div>
									<!-- /.row -->
								</div>
							</div>
							<!-- /.box -->

						</section>
						<!-- right col -->
					</div>
					<!-- /.row (main row) -->

				</section>
			</div>
		</div>
</html>