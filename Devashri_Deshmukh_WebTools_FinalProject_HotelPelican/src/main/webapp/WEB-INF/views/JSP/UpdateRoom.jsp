<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/content.css">
<title>Hotel Pelican | Admin Home</title>


</head>
<body>
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
			<h5>&nbsp;&nbsp; Admin Home >> Rooms And Suits >> View Rooms >> Update Room</h5>
			<br> <br> <br> <br>
			<h3 align="center">Update Room</h3>

			<center>

				<br> <br>
				<form:form action="updateRoom" method="get" commandName="room" >
				<form:input path="roomId" name="id" type="hidden" value="${requestScope.roomId}"/>
					<div>
						<table>

							<tr>
								<td>
									<div>
										<label>Room Type:</label>
									</div>

								</td>
								<td>&nbsp;&nbsp;</td>
								<td><form:select style="style ='width: 30px'" path="roomType" name="roomType">
										<option value="Standard">Standard</option>
										<option value="Premier">Premier</option>
										<option value="Suite">Suite</option>
										<option value="Executive">Executive</option>
										<option value="Penthouse">Penthouse</option>
										<option value="Family">Family</option>
								</form:select></td>

							</tr>

							<tr>
								<td>&nbsp;</td>
							</tr>

							<tr>
								<td>
									<div>
										<label>Capacity:</label>
									</div>

								</td>
								<td>&nbsp;&nbsp;</td>
								<td><form:select style="style ='width: 30px'" path="capacity" name="capacity">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
								</form:select></td>

							</tr>

							<tr>
								<td>&nbsp;</td>
							</tr>

							<tr>
								<td>
									<div>
										<label>Price per day ($):</label>
									</div>

								</td>
								<td>&nbsp;&nbsp;</td>
								<td><form:input type="text" path="pricePerDay" name="pricePerDay" size="10"
									style="height: 30px"/></td>
								<td><form:errors path="pricePerDay" cssStyle="color:#ff0000"></form:errors></td>
							</tr>

							<tr>
								<td>&nbsp;</td>
							</tr>

							

							<tr>
								<td>&nbsp;</td>
							</tr>


						</table>
					</div>
					<div style="padding-left: 250px">
						<br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input style="padding-right: 10px;" id="bigbutton" type="submit" />
					</div>
					</form:form>
					<br><br>
					<c:set var="task" value="${requestScope.task}" />
					<c:choose>
					<c:when test="${task eq 'success'}">
      				<h2 style="color: green;">${requestScope.message}</h2>
					</c:when>

					<c:otherwise>
      				<h2 style="color: red;">${requestScope.message}</h2>
					</c:otherwise>
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
