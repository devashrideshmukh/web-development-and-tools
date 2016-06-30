<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Hotel Pelican | Sign Up</title>
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
						<li><a href="help">Help</a></li>
						<li><a href="gallery">Gallery</a></li>
						<li><a href="rewards">Accolades</a></li>
					</ul>
				</nav>
			</div>
		</header>


		<!--==============================content================================-->
		<section id="content" style="width: 100%;">

			<div style="padding-left: 400px; padding-right: 400px" class="grid_8"
				style="width: 100%;">

				<h2 class="top-1 p3">Hotel Pelican welcomes you...</h2>
				<h2 class="top-1 p3">Sign Up</h2>
				<form:form action="signUpAUser" method="get" modelAttribute="user">

					<table>
						<tr>
							<td>
								<div>
									<label>Name*:</label> <br>
									<form:input path="name" size="55" type="text"
										style="height: 30px" name="name" />
									<form:errors path="name" cssStyle="color:#ff0000"></form:errors>
								</div>

							</td>

							<td>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>

							<td><div>
									<label>City:</label> <br>
									<form:input size="55" type="text" path="city"
										style="height: 30px" name="city" />

								</div></td>
						</tr>

						<tr>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						</tr>


						<tr>
							<td><div>
									<label>Username*:</label> <br>
									<form:input path="username" size="55" type="text"
										style="height: 30px" name="username" />
									<form:errors path="username" cssStyle="color:#ff0000"></form:errors>
								</div></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

							<td><div>
									<label>State:</label> <br>
									<form:input size="55" type="text" style="height: 30px"
										name="state" path="state" />
								</div></td>
						</tr>


						<tr>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						</tr>


						<tr>
							<td><div>
									<label>Password*:</label><br>
									<form:input id="password" size="55" type="password" style="height: 30px"
										name="password" path="password" />
									<form:errors path="password" cssStyle="color:#ff0000"></form:errors>
								</div></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

							<td><div>
									<label>Postal Code:</label> <br>
									<form:input size="55" type="text" style="height: 30px"
										name="postalCode" path="postalCode" />
									<form:errors path="postalCode" cssStyle="color:#ff0000"></form:errors>
								</div></td>
						</tr>

						<tr>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						</tr>

						<tr>
							<td><div>
									<label>Confirm Password*:</label><br> <input size="55"
										type="password" style="height: 30px" name="confirmPassword" />
									<form:errors path="confirmPassword" cssStyle="color:#ff0000"></form:errors>
								</div></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td><div>
									<label>Country:</label> <br>
									<form:input size="55" type="text" style="height: 30px"
										path="country" name="country" />
								</div></td>
						</tr>

						<tr>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						</tr>

						<tr>
							<td><div>
									<label>Security Question*:</label> <br>
									<form:select style="style ='width: 30px'"
										name="customerSequrityquestion"
										path="customerSequrityquestion">
										<option
											value="What was the name of your elementary / primary school?">What
											was the name of your elementary / primary school?</option>
										<option
											value="In what city or town does your nearest sibling live?">In
											what city or town does your nearest sibling live?</option>
										<option value="What time of the day were you born? (hh:mm)">What
											time of the day were you born? (hh:mm)</option>
										<option
											value="What is the name of your favorite childhood friend?">What
											is the name of your favorite childhood friend?</option>
										<option value="What was your favorite sport in high school?">What
											was your favorite sport in high school?</option>
									</form:select>
								</div></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

							<td><div>
									<label>Email-Id*:</label> <br>
									<form:input size="55" type="text" path="emailId"
										style="height: 30px" name="emailId" />
									<form:errors path="emailId" cssStyle="color:#ff0000"></form:errors>
								</div></td>
						</tr>

						<tr>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						</tr>

						<tr>
							<td><div>
									<label>Answer*:</label> <br>
									<form:input size="55" type="text" style="height: 30px"
										path="customerAnswer" name="customerAnswer" />
									<form:errors path="customerAnswer" cssStyle="color:#ff0000"></form:errors>
								</div></td>
								
								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								
								
							<td><div>
									<label>Phone Number*:</label> <br>
									<form:input size="55" type="text" path="phoneNumber"
										style="height: 30px" name="phoneNumber" />
									<form:errors path="phoneNumber" cssStyle="color:#ff0000"></form:errors>
								</div></td>
						</tr>
					</table>





					<div style="padding-left: 250px">
						<br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input style="padding-right: 10px;" id="bigbutton" type="submit"
							value="Sign Up"> <br> <br>

					</div>
				</form:form>
				<c:set var="task" value="${requestScope.task}" />
				<c:choose>
					<c:when test="${task eq 'success'}">
      				<h2 style="color: green;">${requestScope.message}</h2>
					</c:when>

					<c:otherwise>
      				<h2 style="color: red;">${requestScope.message}</h2>
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

<%
	response.setHeader("Cache-Control", "no-cache,no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
