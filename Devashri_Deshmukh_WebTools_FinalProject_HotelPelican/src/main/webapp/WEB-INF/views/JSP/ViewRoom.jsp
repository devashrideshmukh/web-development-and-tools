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
<title>Hotel Pelican | View Rooms</title>
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

		<center>
			<div id="content">


				<br> <br>
				<h5>&nbsp;&nbsp; Admin Home >> Rooms And Suits >> View Rooms</h5>
				<br> <br> <br> <br>






				<h3 align="center">Rooms and Suites</h3>
				<br> <br>



				<c:choose>
					<c:when test="${fn:length(requestScope.listOfRooms) eq 0}">
						<h2 style="color: red">No Rooms or Suites available</h2>
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
							<c:forEach var="room" items="${requestScope.listOfRooms}">
								<tr>
									<td><a
										href="<c:out value='viewRoomDetails?id=${room.roomId}'/>">ROOM_
											${room.roomId}</a></td>
									<td>${room.capacity}</td>
									<td>${room.roomType}</td>
									<td>${room.pricePerDay}</td>
									<td><a
										href="<c:out value='updateRoomDetails?id=${room.roomId}'/>">Update</a></td>
									<td><a
										href="<c:out value='deleteRoom?id=${room.roomId}'/>">Delete</a></td>
								</tr>
							</c:forEach>

						</table>
					</c:otherwise>
				</c:choose>


				<br> <br>


				<c:set var="task" value="${requestScope.from}" />
				<c:set var="room" value="${requestScope.room}" />
				<c:choose>
					<c:when test="${task eq 'viewDetails'}">
							<h1>Details</h1>
							<table>

								<tr>
									<td><b>Room Id:</b></td>
									<td>&nbsp;${room.roomId}</td>
								</tr>
								<tr>
									<td><b>Capacity:</b></td>
									<td>&nbsp;${room.capacity}</td>
								</tr>
								<tr>
									<td><b>Type:</b></td>
									<td>&nbsp;${room.roomType}</td>
								</tr>
								<tr>
									<td><b>Price:</b></td>
									<td>&nbsp;${room.pricePerDay}</td>
								</tr>
								
								
								<tr>
								<td>Image:</td>
								<td><img src="<c:url value="/images/${room.image }"/>"
								style="width:  200px;  height:  140px;"></td>
								</tr>
								
								
							</table>
						</div>
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