<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/content.css">
<title>Hotel Pelican | Admin Home</title>
<script type="text/javascript">
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
</script>
<script language="javascript" type="text/javascript">
	function popitup(url) {
		newwindow = window.open(url, 'name', 'height=200,width=150');
		if (window.focus) {
			newwindow.focus()
		}
		return false;
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

			<br> <br> <br>
			<h5>&nbsp;&nbsp; Admin Home >> View Notifications</h5>
			<br> <br>
			<center>
				<h2>New Bookings</h2>
				<c:choose>
					<c:when test="${fn:length(sessionScope.notifications) eq 0}">
						<h2 style="color: red">No Notifications</h2>
					</c:when>
					<c:otherwise>
						<table class="table table-bordered">
							<thead>
								<td><b>Notification ID</b></td>
								<td><b>Booking Date</b></td>
								<td><b>Amount</b></td>

								<td><b>&nbsp;</b></td>


							</thead>
							<c:forEach var="notification"
								items="${sessionScope.notifications}">
								<tr>

									<td><a
										href="<c:out value='viewBookingCustomerDetails?id=${notification.notificationId}'/>">ID_
											${notification.notificationId}</a></td>


									<td>${notification.booking.bookingDate}</td>
									<td>${notification.booking.totalAmount}</td>
								</tr>
							</c:forEach>

						</table>
					</c:otherwise>
				</c:choose>

				<br> <br>

				<c:set var="task" value="${requestScope.task}" />
				<c:set var="notify" value="${requestScope.notify}" />

				<c:if test="${task eq 'fromView'}">
					<h1>Details</h1>
					<table>

						<tr>
							<td><b>Booking Id:</b></td>
							<td>&nbsp;BOOKINGID_ ${notify.notificationId}</td>
						</tr>
						<tr>
							<td><b>Booking Date:</b></td>
							<td>&nbsp;${notify.booking.bookingDate}</td>
						</tr>
						<tr>
							<td><b>Amount:</b></td>
							<td>&nbsp;${notify.booking.totalAmount}</td>
						</tr>
						<tr>
							<td><b>Check-In Date:</b></td>
							<td>&nbsp;${notify.booking.checkInDate}</td>
						</tr>

						<tr>
							<td><b>Check-Out Date:</b></td>
							<td>&nbsp;${notify.booking.checkOutDate}</td>
						</tr>

						<tr>
							<td><b>Customer Id:</b></td>
							<td>&nbsp;${notify.booking.user.userId}</td>
						</tr>

						<tr>
							<td><b>Customer Name:</b></td>
							<td>&nbsp;${notify.booking.user.name}</td>
						</tr>

						<tr>
							<td><b>Customer Email:</b></td>
							<td>${notify.booking.user.emailId}</td>
							<td>&nbsp;</td>
						</tr>
					</table>
				</c:if>
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