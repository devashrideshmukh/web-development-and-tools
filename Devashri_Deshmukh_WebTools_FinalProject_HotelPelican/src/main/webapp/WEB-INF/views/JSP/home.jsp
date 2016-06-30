<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<title>Hotel Pelican | Admin Home</title>
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


<script type="text/javascript">
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
</script>
</head>
<body onload="noBack();" onpageshow="if(event.persisted) noBack();"
	onunload="">
	<%
		response.setHeader("Cache-Control",
				"no-cache,no-store,must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
	%>

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
						<li class="current"><a href="#">Home</a></li>
						<li><a href="aboutUs">About Us</a></li>
						<li><a href="contactUs">Contact Us</a></li>
						<li><a href="help">Help</a></li>
						<li><a href="gallery">Gallery</a></li>
						<li><a href="rewards">Accolades</a></li>
					</ul>
				</nav>
			</div>
		</header>
		<!--==============================content================================-->
		<section id="content">
			<div class="container_12">
				<div class="grid_8">

					<h2 class="top-1 p3">Welcome!</h2>
					<p class="p2">A member of Preferred Hotels & Resorts LEGEND
						Collection, Boston’s only Forbes Five-Star water-front hotel
						welcomes guests arriving by land or sea. Located on the historic
						Rowes Wharf Harbor, Hotel Pelican's inviting ambiance and
						unparalleled service provide the ideal home away from home for
						travelers. Luxurious accommodations with sweeping views of
						Boston’s cityscape or breathtaking water-front, a contemporary spa
						and fitness center, world-class dining and a 34-slip marina make
						Hotel Pelican a destination Beyond compare.</p>
					<p class="line-1"></p>
					<h3 class="p4">Room Services, Inservices, Tour Package
						Services</h3>
					<div class="wrap block-1">
						<div>
							<img
								src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/RoomServices.jpg"
								alt="" class="img-border" width="100%" height="20%">
							<h3>Room Services</h3>
							<p>Using this service, customers can book rooms online and
								customer can know the details of rooms which are alloted.</p>
							<a href="#" class="button">More</a>
						</div>
						<div>
							<img
								src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/Inservices.jpg"
								alt="" class="img-border" width="100%" height="20%">
							<h3>In-services</h3>
							<p>Using this service, customers can avail in-services like
								laundry, gym,spa and library. Customers can also get Loyalty
								Points which can be redeemed for future bookings</p>
							<a href="#" class="button">More</a>
						</div>
						<div class="last">
							<img
								src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/TourServices.jpg"
								alt="" class="img-border" width="100%" height="20%">
							<h3>Tour Package Services</h3>
							<p>Using this service, customers can request for tour
								packages.</p>
							<a href="#" class="button">More</a>
						</div>
					</div>
				</div>

				<div class="grid_4">
					<br>
					<div style="border: 2px solid; border-radius: 25px;">
						<div class="left-1">
							<h3 class="top-1 p3">Login</h3>
							<form id="form-1" class="form-1 bot-1" action="login"
								method="post">




								<div style="padding: 20px;">
									<label>Username</label> <input size="4" type="text"
										style="height: 30px" value="Enter Username" name="username"
										onBlur="if(this.value=='') this.value='Enter Username'"
										onFocus="if(this.value =='Enter Username' ) this.value=''">
								</div>

								<br>

								<div style="padding: 20px;">
									<label>Password</label> <input type="password"
										value="Enter Password" style="height: 30px" name="password"
										onBlur="if(this.value=='') this.value='Enter Password'"
										onFocus="if(this.value =='Enter Password' ) this.value=''">
								</div>
								<div>
									<h4 style="color: red;">${requestScope.loginFailed}</h4>
								</div>
								<div>
									<br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input id="bigbutton" type="submit" value="Login">
									<div
										style="float: right; padding-right: 30px; padding-bottom: 20px;">
										New User? <br>
										<h3>
											<a href="signUp">Sign Up</a>
										</h3>
									</div>

									
								</div>
								<div
										style="float: right; padding-right: 30px; padding-bottom: 20px;">
										<u><a href="forgotPassword"><h5 style="color: white">Forgot Password? Click here</h5></u> </a><br>
									</div>
							</form>
						</div>
					</div>


					<br>
					<div class="clear"></div>



					<h2 class="p3">Explore Us</h2>
					<img
						src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/page1-img4.png"
						alt="">
					<div class="lists">
						<ul class="list-1">
							<li><a href="#">North America</a></li>
							<li><a href="#">Latin America</a></li>
							<li><a href="#">Europe</a></li>
						</ul>
						<ul class="list-1 last">
							<li><a href="#">Asia</a></li>
							<li><a href="#">Middle East</a></li>
							<li><a href="#">Africa</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="clear"></div>
	</div>
	</section>
	</div>
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