<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title></title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" media="screen"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/reset.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/style.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/grid_12.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/slider.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/css/jqtransform.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/cbdb-search-form.css"
	type="text/css" />
<script
	src="${pageContext.request.contextPath}/resources/myTheme/JS/jquery-1.7.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/myTheme/JS/jquery.easing.1.3.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/myTheme/JS/cufon-yui.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/myTheme/JS/vegur_400.font.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/myTheme/JS/Vegur_bold_700.font.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/myTheme/JS/cufon-replace.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/myTheme/JS/tms-0.4.x.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/myTheme/JS/jquery.jqtransform.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/myTheme/JS/FF-cash.js"></script>
<script>
	$(document).ready(function() {
		$('.form-1').jqTransform();
		$('.slider')._TMS({
			show : 0,
			pauseOnHover : true,
			prevBu : '.prev',
			nextBu : '.next',
			playBu : false,
			duration : 1000,
			preset : 'fade',
			pagination : true,
			pagNums : false,
			slideshow : 20,
			numStatus : false,
			banners : false,
			waitBannerAnimation : false,
			progressBar : false
		})
	});
</script>

</head>
<body>
	<div class="main">
		<!--==============================header=================================-->
		<header>
		<div>
			<h1>
				<a href="#"><img
					src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/logoFinal.png"
					alt=""></a>
			</h1>
			<div class="social-icons">
				<span>Welcome ,</span> <span><font
					style="font-size: 25px; color: white; font-weight: bold;">${user.username}</font></span>
			</div>
			<div id="slide">
				<div class="slider">
					<ul class="items">
						<%-- <li><img
							src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/slider-1-small.jpg"
							alt=""></li> --%>
						<li><img
							src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/slider-2-small.jpg"
							alt=""></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/slider-3-small.jpg"
							alt=""></li>
					</ul>
				</div>

				<nav>
				<ul class="menu">
					<li><a href="adminHome">Home</a></li>
					<li><a href="adminAboutUs">Insights</a></li>
					<li><a href="adminContactUs">Contact Us</a></li>
					<li><a href="adminGallery">Gallery</a></li>
					<li><a href="adminRewards">Accolades</a></li>
					<li><a href="logout">Logout</a></li>
				</ul>
				</nav>
			</div>
		</header>
</body>
</html>