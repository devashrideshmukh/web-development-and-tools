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
				Suites</h5>
			<br> <br>
			<h3 align="center">Book Rooms and Suites</h3>
			<br>
			<center>
				<h4>Search Available Rooms</h4>
				<br> <br>
				<form action="searchAvailableRooms">
					<table>
						<tr>
							<td>Type:&nbsp;</td>
							<td><select style="style ='width: 30px'" name="roomType">
									<option value="Standard">Standard</option>
									<option value="Premier">Premier</option>
									<option value="Suite">Suite</option>
									<option value="Executive">Executive</option>
									<option value="Penthouse">Penthouse</option>
									<option value="Family">Family</option>
							</select></td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>Adults:&nbsp;</td>
							<td><select style="style ='width: 30px'" name="capacity">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
							</select></td>
						</tr>

						<tr>
							<td><br></td>
						</tr>

						<tr>
							<td>Check-In:&nbsp;</td>
							<td><input type="date" name="checkIn" style="height: 30px;" required/></td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>Check-Out:&nbsp;</td>
							<td><input type="date" name="checkOut" style="height: 30px;" required /></td>
						</tr>
					</table>
					<div style="padding-left: 250px">
						<br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input style="padding-right: 10px;" id="bigbutton" type="submit"
							value="Search" />
					</div>
				</form>
			</center>
			<center>
			<div style="padding-left: 250px;">
			<br>
			<h3 style="color: red">${requestScope.message}</h3>
				<br> <br>
				<c:set var="task" value="${requestScope.task}" />
				<c:choose>
					<c:when test="${task eq 'viewAvailableRooms'}">

						<h2>Rooms matching your preferences</h2>
						<br>
						<c:choose>
							<c:when
								test="${fn:length(requestScope.listOfAvailableRooms) eq 0}">
								<h3 style="color: red">No Rooms or Suites available</h3>
							</c:when>
							<c:otherwise>
								<table class="table table-bordered">
									<thead>
										<td><b>Room ID</b></td>
										<td><b>Capacity</b></td>
										<td><b>Room Type</b></td>
										<td><b>Price($)</b></td>
										<td><b>&nbsp;</b></td>


									</thead>
									<c:forEach var="room"
										items="${requestScope.listOfAvailableRooms}">
										<tr>
											<td>ROOM_ ${room.roomId}</td>
											<td>${room.capacity}</td>
											<td>${room.roomType}</td>
											<td>${room.pricePerDay}</td>
											<td><a
												href="<c:out value='bookRoom?id=${room.roomId}'/>">Book</a></td>
									</c:forEach>

								</table>
							</c:otherwise>
						</c:choose>
					</c:when>
				</c:choose>
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