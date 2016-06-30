<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Hotel Pelican | Gallery</title>
<meta charset="utf-8">
<link type="text/css" media="screen"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/reset.css"
	rel="stylesheet">
<link type="text/css" media="screen"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/loginstyle.css"
	rel="stylesheet">
<link type="text/css" media="screen"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/grid_12.css"
	rel="stylesheet">
<link type="text/css" media="screen"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/slider-2.css"
	rel="stylesheet">
<link type="text/css" media="screen"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/jqtransform.css"
	rel="stylesheet">
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
	src="${pageContext.request.contextPath}/resources/myTheme/JS/js/FF-cash.js"></script>
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
					<a href=""> <img height="150" width="350"
						src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/logoFinal.png"
						alt=""></a>
				</h1>

				<div class="social-icons">
					<span>Follow Us:</span> <a href="#"> <img
						src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/icon-3.png"
						alt=""></a> <a href="#"><img
						src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/icon-2.png"
						alt="">&nbsp;&nbsp;</a> <a href="#"><img
						src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/icon-1.png"
						alt=""></a>
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

				</div>


				<nav>
					<ul class="menu">
					<li><a href="customerHome">Home</a></li>
					<li><a href="customerAboutUs">Insights</a></li>
					<li><a href="customerContactUs">Contact Us</a></li>
					<li><a href="customerGallery">Gallery</a></li>
					<li><a href="customerRewards">Accolades</a></li>
					<li><a href="logout">Logout</a></li>
				</nav>
			</div>
		</header>
		<br> <br> <br> <br> <br>
		<div id="content" style="float: left; margin-left: 50px;">
			<h3>
				<p style="font-style: italic; color: white; margin-left: 250px;">
					<i>Striding towards Excellence with passion and style.......</i>
				</p>
			</h3>
			<div id="slide">
				<div class="slider">
					<ul class="items">
						<li><img
							src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/hotel4.jpg"
							alt=""></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/hotel5.jpg"
							alt=""></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/hotel6.jpg"
							alt=""></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/hotel7.jpg"
							alt=""></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/hotel8.jpg"
							alt=""></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/hotel9.jpg"
							alt=""></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/hotel10.jpg"
							alt=""></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/hotel11.jpg"
							alt=""></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/hotel12.jpg alt=""></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/hotel13.jpg"
							alt=""></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/hotel14.jpg"
							alt=""></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/hotel15.jpg"
							alt=""></li>
					</ul>
				</div>
				<a href="#" class="prev"></a><a href="#" class="next"></a>
			</div>


		</div>
		<footer>
			<p>&copy;2015 Hotel Pelican</p>
			<p>Website Designed by Devashri Deshmukh</p>
		</footer>

	</div>
</body>
</html>
%>
