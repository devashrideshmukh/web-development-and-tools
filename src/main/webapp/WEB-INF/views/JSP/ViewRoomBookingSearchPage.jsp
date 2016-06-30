<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/content.css">
<title>Hotel Pelican | View Bookings</title>
<script type="text/javascript">
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
</script>

</head>
<body onload="noBack();" onpageshow="if(event.persisted) noBack();"
	onunload="">
	<div id="container">
		<div id="header">
			<%@include file="header.jsp"%>
		</div>

		<div id="sidebar">
			<%@include file="SideBar.jsp"%>
		</div>

		<div id="logincontent" style="float: right;">

			<%@include file="newsFeed.jsp"%>
		</div>


		<div id="content">

			<br> <br>
			<h5>&nbsp;&nbsp; Admin Home >> Sales >> View Bookings</h5>
			<br> <br>
			<h3 align="center">View Bookings for Rooms and Suites</h3>
			<br>
			<center>
				<form action="searchBookingsByDate" method="post">
					<table>
						<tr>
							<td><select style="style ='width: 30px'" name="type">
									<option value="checkInDate">Check-In Date</option>
									<option value="checkOutDate">Check-Out Date</option>
									<option value="bookingDate">Booking Date</option>
							</select></td>
							<td>&nbsp;&nbsp;</td>
							<td><input type="date" name="dateOfSearch" style="height: 30px;"
								required /></td>
							<td>&nbsp;&nbsp;</td>
							<td><input style="padding-right: 10px;" id="bigbutton"
								type="submit" value="Search" /></td>
						<tr>
					</table>
				</form>
				
				
				
				<c:choose>
					<c:when test="${fn:length(requestScope.bookingList) eq 0}">
						<h2 style="color: red">No Bookings available for this date</h2>
					</c:when>
					<c:otherwise>
						<table class="table table-bordered">
							<thead>
								<td><b>Booking ID</b></td>
								<td><b>Amount</b></td>
								<td><b>Room Id</b></td>
								<td><b>Check-In Date</b></td>
								<td><b>Check-Out Date</b></td>
								
								<td><b>&nbsp;</b></td>


							</thead>
							<c:forEach var="booking" items="${requestScope.bookingList}">
								<tr>
									<td>${booking.bookingId}</td>
									<td>${booking.totalAmount}</td>
									<td>${booking.roomId}</td>
									<td>${booking.checkInDate}</td>
									<td>${booking.checkOutDate}</td>
									
								</tr>
							</c:forEach>

						</table>
					</c:otherwise>
				</c:choose>
				
				
				
				

			</center>
		</div>






		<div id="footer">
			<%@include file="footer.jsp"%>
		</div>
	</div>
</body>
</html>
<%
	response.setHeader("Cache-Control", "no-cache,no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>