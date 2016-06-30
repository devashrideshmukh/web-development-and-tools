<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/content.css">
<title>Hotel Pelican | Booking History</title>
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
			<%@include file="customerHeader.jsp"%>
		</div>

		<div id="sidebar">
			<%@include file="customerSideBar.jsp"%>
		</div>

		<div id="logincontent" style="float: right;">

			<%@include file="newsFeed.jsp"%>
		</div>


		<div id="content">

			<br> <br> <br>



			<center>
				
				<table class="table table-bordered">
			
					<thead>Your booking history</thead><br>
					<tr>	<td><b>Booking ID</b></td>
						<td><b>Amount</b></td>
						<td><b>Room Id</b></td>
						<td><b>Check-In Date</b></td>
						<td><b>Check-Out Date</b></td>

						<td><b>&nbsp;</b></td>
					</tr>

					
					<c:forEach var="booking" items="${sessionScope.bookingHistory}">
						<tr>
							<td>${booking.bookingId}</td>
							<td>${booking.totalAmount}</td>
							<td>${booking.roomId}</td>
							<td>${booking.checkInDate}</td>
							<td>${booking.checkOutDate}</td>

						</tr>
					</c:forEach>

				</table>

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