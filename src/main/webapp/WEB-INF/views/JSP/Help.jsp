<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Hotel Pelican | Help Us</title>
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
						<li><a href="home">Home</a></li>
						<li><a href="aboutUs">About Us</a></li>
						<li><a href="contactUs">Contact Us</a></li>
						<li  class="current"><a href="help">Help</a></li>
						<li><a href="gallery">Gallery</a></li>
						<li><a href="rewards">Accolades</a></li>
					</ul>
				</nav>
				
			</div>
		</header>
		<!--==============================content================================-->
		<section id="content" style="width: 100%;">
			<div class="container_12">
				<div class="grid_8" style="width: 100%;">
					<img src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/HELP.jpg"
						style="width: 100%; height: 300px">
					<h2 class="top-1 p3">Assistance</h2>
					<p class="p2">
					<table>
					
					<tr>
					<td><p><b>Group Room Blocks</b><br />617.439.7000 ext. 5100<br />Email: <a href="mailto:sales@hotelPelican.com">sales@hotelPelican.com</a></p></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><p><b>Weddings, Function Rooms and<br />Catering Information</b><br />617.439.7000 ext. 5200 <br />Email: <a href="mailto:catering@hotelPelican.com">catering@hotelPelican.com</a></p></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><p><b>Guest Room Reservations</b><br />800.752.7077<br />Email: <a href="mailto:reservations@hotelPelican.com">reservations@hotelPelican.com</a></p></td>
					</tr>
					
					<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><tr>
					
					<tr>
					<td><p><b>Request Hotel Receipt</b><br />617-439-7000, ext. 2100<br />Email: <a href="mailto:folio@hotelPelican.com" target="_blank">folio@hotelPelican.com</a></p></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><p><b>Rowes Wharf Sea Grille</b><br />617-856-7744<br />Email: <a href="mailto:RWSG@hotelPelican.com">RWSG@hotelPelican.com</a></p></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><p><b>Special Service Requests</b><br />617.856.7728<br />Email: <a href="mailto:concierge@hotelPelican.com">concierge@hotelPelican.com</a></p></td>
					</tr>
					
					<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><tr>
					
					<tr>
					<td><b><p>Meritage the Restaurant</b><br />617-439-3995<br />Email: <a href="mailto:meritagetherestaurant@hotelPelican.com">meritagetherestaurant@hotelPelican.com</a></p></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><b><p>Spa at Rowes Wharf</b><br />617-439-3914<br />Email: <a href="mailto:healthclub@hotelPelican.com">healthclub@hotelPelican.com</a></p></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><b><p>Rowes Wharf Water Taxi<br /></b>617-406-8584<br /><a href="http://www.roweswharfwatertaxi.com">www.roweswharfwatertaxi.com</a></p></td>
					</tr>
					
					<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					</tr>
					<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					</tr>
					
					</table>






				</div>
			</div>
		</section>
		<footer>
			<p>&copy;2015 Hotel Pelican</p>
			<p>Website Designed by Devashri Deshmukh</p>
		</footer>
	</div>
</body>
</html>
<%
	response.setHeader("Cache-Control", "no-cache,no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>



</html>

