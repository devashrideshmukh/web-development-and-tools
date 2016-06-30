<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 

"http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title></title>
<!-- Start css3menu.com HEAD section -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/style1.css"
	type="text/css" />
<style type="text/css">
._css3m {
	display: none
}
</style>
<!-- End css3menu.com HEAD section -->
</head>
<body style="background-color: #EBEBEB">
	<ul id="css3menu1" class="topmenu">
		<li class="topfirst"><a href=""
			style="width: 240px; height: 32px; line-height: 32px;"><span>Bookings</span></a>
			<ul>
				<li class="subfirst"><a href="bookRooms">Book Rooms and Suites</a></li>
				


			</ul></li>
		
		<li class="topmenu"><a href="#"
			style="width: 240px; height: 32px; line-height: 32px;"><span>My Profile</span></a>
			<ul>
				<li class="subfirst">
					
				<li><a href="viewLoyalityPoints">View Loyality Points</a></li>
				<li><a href="bookingHistory">View Booking History</a></li>
			</ul></li>
	</ul>
	<div id="tagcloud">
		<br><%@include file="CustomerTagCloud.jsp"%>
	</div>
</body>
</html>
