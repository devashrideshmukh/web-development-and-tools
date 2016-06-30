<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/content.css">
<title>Hotel Pelican | Customer Home</title>
<script type="text/javascript">
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
</script>
<!---strat-date-piker---->

<link type="text/css" media="all"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/jquery-ui.css"
	rel="stylesheet">

<script
	src="${pageContext.request.contextPath}/resources/myTheme/JS/jquery-ui.js"></script>

</head>
<body onload="noBack();" onpageshow="if(event.persisted) noBack();"
	onunload="">
	<div id="container">
		<div id="header">
			<%@include file="customerHeader.jsp"%>
		</div>

		<div id="sidebar">
			<%@include file="customerSideBar.jsp"%>
		</div>

		<div id="logincontent" style="float: right;">

			<%@include file="newsFeed.jsp"%>
		</div>


		<div id="content">

			<br>
			<h5>&nbsp;&nbsp; Customer Home >> Bookings >> Book rooms and
				Suites >> Booking Summary</h5>
			<br> <br>
			<h3 align="center">Summary</h3>
			<br>
			<center>
				<h4>Confirm Your Booking</h4>
				<br> <br>
				
					<table>
						<tr>
							<td><b>Room Id:</b>&nbsp;</td>
							<td>${room.roomId}</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td><b>Room Type:</b>&nbsp;</td>
							<td>${sessionScope.room.roomType}</td>
						</tr>

						<tr>
							<td><br></td>
						</tr>

						<tr>
							<td><b>Check-In:</b>&nbsp;</td>
							<td>${sessionScope.checkInDate}</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td><b>Check-Out:</b>&nbsp;</td>
							<td>${sessionScope.checkOutDate}</td>
						</tr>
						
						<tr>
							<td><br></td>
						</tr>

						<tr>
							<td><b>Room Capacity:</b>&nbsp;</td>
							<td>${room.capacity}</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td><b>Adults:</b>&nbsp;</td>
							<td>${sessionScope.adults}</td>
						</tr>
						
						<tr>
							<td><br></td>
						</tr>

						<tr>
							<td><b>Total Amount($):</b>&nbsp;</td>
							<td>${sessionScope.totalAmount}</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							
						</tr>
						
						<tr>
							<td><br></td>
						</tr>

						<tr>
							<td><b>Loyality Points Available with Customer:</b>&nbsp;</td>
							<td>${sessionScope.user.loyaltyPoints}</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>
							<form action="redeemPoints">
							<input type="submit" value="Redeem Points" />
							</form>
							</td>
							
						</tr>
						
						<tr>
					<td>&nbsp;&nbsp;&nbsp;</td>
						</tr>
						
						<tr>
						<td><img src="<c:url value="/images/${room.image}"/>"
								style="width:  200px;  height:  140px;"></td>
						</tr>
						
					</table>
					
					
					
					<div style="padding-left: 250px">
						<br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="confirmBooking">	<input style="padding-right: 10px;" id="bigbutton" type="button"
							value="Proceed  " /></a>
					</div> 
				
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