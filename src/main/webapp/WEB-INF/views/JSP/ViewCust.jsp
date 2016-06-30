<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/content.css">
<title>Hotel Pelican | Notification</title>
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
		
		
		
			<div id="content">

				<br> <br> <br>

				

				<center>
				
				<h2><a href="viewNotifications">You have ${fn:length(sessionScope.notifications)} notifications</a></h2>
					
					<h3 class="p4">Room Services, In-services, Tour Package
						Services</h3>
					<div class="wrap block-1" style="margin-left:10%">
						<div>
							<img
								src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/RoomServices.jpg"
								alt="" class="img-border" width="100%" height="100%">
							<h3>Room Services</h3>
							<p>Using this service, customers can book rooms through
								online and customer can know the details of rooms alloted to
								them.</p>
						</div>
						<div>
							<img
								src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/Inservices.jpg"
								alt="" class="img-border" width="100%" height="100%">
							<h3>In-services</h3>
							<p>Using this service, customers can avail in-services like
								laundry, gym and library and customers can get loyalty points
								also for in-services.</p>
						</div>
						<div class="last">
							<img
								src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/TourServices.jpg"
								alt="" class="img-border" width="100%" height="100%">
							<h3>Tour Package Services</h3>
							<p>Using this service, customers can request for tour
								packages and can also know which vehicles are alloted for them.</p>
						</div>
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