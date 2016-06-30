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
		<section id="content" style="width: 100%;">





			<c:set var="from" value="${requestScope.from}" />

			<c:choose>
				<c:when test="${from eq 'userRetrieved'}">
					<h2 class="top-1 p3">${requestScope.message}</h2>
					<form action="forgotPasswordAnswer">
					
						<table>
							<tr>
								<td><label>${requestScope.securityQuestion}</label></td>
								<td><input size="55" type="text" style="height: 30px"
									name="answer" required /></td>
								<td><br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input id="bigbutton" type="submit" value="Submit"> <br>
									<br></td>
							<tr>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							</tr>

						</table>

					</form>
				</c:when>
				
				<c:when test="${from eq 'error'}">
					<h2 style="color:red;" class="top-1 p3">${requestScope.message}</h2>
					
				</c:when>
				
				<c:when test="${from eq 'answerCorrect'}">
					<h2 class="top-1 p3">${requestScope.message}</h2>
					
				</c:when>
				
				<c:otherwise>

					<div style="padding-left: 400px; padding-right: 400px"
						class="grid_8" style="width: 100%;">

						<h2 class="top-1 p3">Hotel Pelican welcomes you...</h2>
						<h2 class="top-1 p3">Forgot Password? Enter your username</h2>
						<form action="forgotPasswordUsername">

							<table>
								<tr>
									<td><label>Username*:</label></td>
									<td><input size="55" type="text" style="height: 30px"
										name="username" required /></td>
									<td><br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input id="bigbutton" type="submit" value="Sign Up"> <br>
										<br></td>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								</tr>

							</table>



						</form>
				</c:otherwise>





			</c:choose>


			<div class="clear">
				<br> <br>
			</div>
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
