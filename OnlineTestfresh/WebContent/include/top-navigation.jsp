</head>
<body class="fix-sidebar fix-header">
<!-- Preloader -->
<div class="preloader">
	<div class="cssload-speeding-wheel"></div>
</div>
<div id="wrapper"> 
	<!-- Top Navigation -->
	<nav class="navbar navbar-default navbar-static-top m-b-0">
		<div class="navbar-header"><img src="image/logo_sm.png" class="hidden-sm hidden-md hidden-lg p-l-15 p-r-15" /> <a class="navbar-toggle hidden-sm hidden-md hidden-lg " href="javascript:void(0)" data-toggle="collapse" data-target=".navbar-collapse"><i class="ti-menu"></i></a>
			<div class="top-left-part"><a class="logo" href="javascript:void(0);"><span class=""><img src="image/logo.png" /></span></a></div>
			<ul class="nav navbar-top-links navbar-left hidden-xs">
				<li><a href="javascript:void(0)" class="open-close hidden-xs waves-effect waves-light text-logo"><i class="icon-arrow-left-circle ti-menu"></i></a></li>
			</ul>
			<ul class="nav navbar-top-links navbar-right pull-right">
				<li class="dropdown">
					<a class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#">
						<i class="icon-user"></i> <span class="hidden-xs">${loginInfromation}</span>
					</a>
					<ul class="dropdown-menu userprofile animated bounceInUp">
						<li><a href="<%=request.getContextPath()%>/getProfile"><i class="fa fa-user-o"></i> My profile</a></li>
						<li><a href="<%=request.getContextPath()%>/viewUpdatePassword"><i class="fa fa-gear"></i> Account setting</a></li>
						<li> <a href="<%=request.getContextPath()%>/"><i class="fa fa-power-off"></i> Logout</a></li>
					</ul>
					<!-- /.dropdown-messages --> 
				</li>
				<!-- /.dropdown -->
			</ul>
		</div>
		<!-- /.navbar-header --> 
		<!-- /.navbar-top-links --> 
		<!-- /.navbar-static-side --> 
	</nav>
	<!-- End Top Navigation -->
