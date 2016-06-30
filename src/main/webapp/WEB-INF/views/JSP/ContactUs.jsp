<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Hotel Pelican | Contact Us</title>
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
						<li class="current"><a href="contactUs">Contact Us</a></li>
						<li><a href="help">Help</a></li>
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
					<img
						src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/contactus.jpg"
						alt="" class="img-border" width="100%" height="20%">
					<h2 class="top-1 p3">Contact Us</h2>
					<p class="p2">
					<p>
						
					<div id="address">
						<table>
							<tr style="padding-bottom: 10%; margin-bottom: 10%;">
								<td style="width: 300px">
									<address>
										<b style="color: #2098f5">North America</b> <br>Hotel
										Pelican, Boston<br> 85 Rowes Wharf,<br>Boston, <br>MA
										02112 <br> USA <br> Tel :617.439.7020<br> Fax:
										617.330.9450<br>
									</address>

								</td>
								<td style="width: 300px"><span>
										<address>
											<b style="color: #2098f5">Latin America</b> <br>Hotel
											Pelican, Panama City<br>207 US Hwy 231,<br>Panama
											City, <br>FL 32003-470,<br> USA<br> Tel :
											044-6688 8000<br> Fax: 044-6688 8080<br>

										</address>

								</span></td>

								<td style="width: 300px"><span>
										<address>
											<b style="color: #2098f5">Europe</b> <br>Hotel Pelican,
											San Stefano<br>399 El Geish Road, <br>P.O Box 164,
											<br>Alexandria ,<br> Egypt<br> Tel : +20 (3)
											581-8000<br> Fax: +20 (3) 581-8080<br>
										</address>
								</span></td>
							</tr>

							<tr style="color: #2098f5; font-weight: bold;">
								<td>------------------------------------------------</td>
								<td>------------------------------------------------</td>
								<td>------------------------------------------------</td>
							</tr>

							<tr>
								<td style="width: 300px">
									<address>
										<b style="color: #2098f5">Asia</b> <br>Hotel Pelican, Mumbai<br> 10 Marine Drive, <br>Mumbai, <br>Maharashtra 411022,<br> India<br> Tel : 066-2233 4000<br>
										Fax: 066-2233 4040<br>


									</address>
								</td>
								<td style="width: 300px"><span>
										<address>
											<b style="color: #2098f5">Middle East</b> <br>Hotel
											Pelican, Dubai<br>The Palm, <br>Crescent Road, <br>The
											Palm<br> United Arab Emirates<br> Tel : +971 4 426
											2000 <br> Fax: 001-4425 7070<br>
										</address>
								</span></td>

								<td style="width: 300px"><span>
										<address>
											<b style="color: #2098f5">Africa</b> <br>Hotel Pelican,<br> Sirons Road, <br>Near Manly Beach, <br>Ethopia,<br> Africa<br> Tel : 061-6589 7894<br>
											Fax: 061-4589 8526<br>
										</address>
								</span></td>
							</tr>

						</table>
					</div>
					</div>
					<div class="clear"></div>
					</div>
					</section>


					<!--==============================footer=================================-->
					<footer>
						<p>&copy;2015 Hotel Pelican</p>
						<p>Website Designed by Devashri Deshmukh</p>
					</footer>
					<script>
						Cufon.now();
					</script>
</body>
</html>
<%
	response.setHeader("Cache-Control", "no-cache,no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
