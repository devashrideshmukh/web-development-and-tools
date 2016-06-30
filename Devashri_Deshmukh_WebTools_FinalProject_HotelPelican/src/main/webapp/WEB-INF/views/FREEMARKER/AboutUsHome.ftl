
<!DOCTYPE html>
<html lang="en">
<head>
<title>Hotel Pelican | Insights</title>
<meta charset="utf-8">
<link type="text/css" media="screen"
	href="${context}/resources/myTheme/CSS/reset.css" 
	rel="stylesheet">
<link type="text/css" media="screen"
	href="${context}/resources/myTheme/CSS/loginstyle.css"
	rel="stylesheet">
<link type="text/css" media="screen"
	href="${context}/resources/myTheme/CSS/grid_12.css"
	rel="stylesheet">
<link type="text/css" media="screen"
	href="${context}/resources/myTheme/CSS/slider-2.css"
	rel="stylesheet">
<link type="text/css" media="screen"
	href="${context}/resources/myTheme/CSS/jqtransform.css"
	rel="stylesheet">
<script
	src="${context}/resources/myTheme/JS/jquery-1.7.min.js"></script>
<script
	src="${context}/resources/myTheme/JS/jquery.easing.1.3.js"></script>
<script
	src="${context}/resources/myTheme/JS/cufon-yui.js"></script>
<script
	src="${context}/resources/myTheme/JS/vegur_400.font.js"></script>
<script
	src="${context}/resources/myTheme/JS/Vegur_bold_700.font.js"></script>
<script
	src="${context}/resources/myTheme/JS/cufon-replace.js"></script>
<script
	src="${context}/resources/myTheme/JS/tms-0.4.x.js"></script>
<script
	src="${context}/resources/myTheme/JS/jquery.jqtransform.js"></script>
<script
	src="${context}/resources/myTheme/JS/js/FF-cash.js"></script>
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
						src="${context}/resources/myTheme/IMAGES/logoFinal.png"
						alt=""></a>
				</h1>

				<div class="social-icons">
					<span>Follow Us:</span> <a href="#"> <img
						src="${context}/resources/myTheme/IMAGES/icon-3.png"
						alt=""></a> <a href="#"><img
						src="${context}/resources/myTheme/IMAGES/icon-2.png"
						alt="">&nbsp;&nbsp;</a> <a href="#"><img
						src="${context}/resources/myTheme/IMAGES/icon-1.png"
						alt=""></a>
				</div>



				<div id="slide">
					<div class="slider">
						<ul class="items">
							<%-- <li><img
								src="${context}/resources/myTheme/IMAGES/slider-1-small.jpg"
								alt=""></li> --%>
							<li><img
								src="${context}/resources/myTheme/IMAGES/slider-2-small.jpg"
								alt=""></li>
							<li><img
								src="${context}/resources/myTheme/IMAGES/slider-3-small.jpg"
								alt=""></li>
						</ul>
					</div>



				</div>
				<nav>
					<ul class="menu">
						<li><a href="home">Home</a></li>
						<li class="current"><a href="aboutUs">About Us</a></li>
						<li><a href="contactUs">Contact Us</a></li>
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
						src="${context}/resources/myTheme/IMAGES/insights.jpg"
						alt="">
					<h2 class="top-1 p3">Insights</h2>
					<p class="p2">
					<p>A member of Preferred Hotels & Resorts LEGEND Collection,
						Boston’s only Forbes Five-Star water-front hotel welcomes guests
						arriving by land or sea. Located on the historic Rowes Wharf
						Harbor, Hotel Pelican's inviting ambiance and unparalleled service
						provide the ideal home away from home for travelers. Luxurious
						accommodations with sweeping views of Boston’s cityscape or
						breathtaking water-front, a contemporary spa and fitness center,
						world-class dining and a 34-slip marina make Hotel Pelican a
						destination Beyond compare. An exclusive heritage business hotel,
						Hotel Pelican offers travelers the perfect blend of heritage,
						luxury and business on the shores of Boston. Wonderfully furnished
						rooms, elegantly designed surroundings and a quiet environment in
						a sprawling landscape amidst the city make it a favorite retreat
						for travelers.It is also a hub for those who seek to explore the
						city, the surrounding towns and tourist attractions.</p>
					<p class="line-1"></p>
					<h3 class="p4">Room Services, In-services, Tour Package
						Services</h3>
					<div class="wrap block-1">
						<div>
							<img
								src="${context}/resources/myTheme/IMAGES/RoomServices.jpg"
								alt="" class="img-border" width="100%" height="20%">
							<h3>Room Services</h3>
							<p>Using this service, customers can book rooms online and
								customer can know the details of rooms which are alloted.</p>
							<a href="#" class="button">More</a>
						</div>
						<div>
							<img
								src="${context}/resources/myTheme/IMAGES/Inservices.jpg"
								alt="" class="img-border" width="100%" height="20%">
							<h3>In-services</h3>
							<p>Using this service, customers can avail in-services like
								laundry, gym,spa and library. Customers can also get Loyalty
								Points which can be redeemed for future bookings</p>
							<a href="#" class="button">More</a>
						</div>
						<div class="last">
							<img
								src="${context}/resources/myTheme/IMAGES/TourServices.jpg"
								alt="" class="img-border" width="100%" height="20%">
							<h3>Tour Package Services</h3>
							<p>Using this service, customers can request for tour
								packages</p>
							<a href="#" class="button">More</a>
						</div>

						<div style="float: right;" id="map">
							<h2 class="p3">Explore Us</h2>
							<img
								src="${context}/resources/myTheme/IMAGES/page1-img4.png"
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
