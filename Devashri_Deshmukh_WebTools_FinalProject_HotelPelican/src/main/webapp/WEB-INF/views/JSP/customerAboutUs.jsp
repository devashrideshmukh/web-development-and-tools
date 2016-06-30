<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/content.css">
<title>Hotel Pelican | Insights</title>
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
		<br>
		<br>
			<div id="content">
			<center>
				<div class="container_12" >
				<div class="grid_8" style="width: 70%;">
					<img style="width: 700px;"
						src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/insights.jpg"
						alt="">
					<h2 style="padding: 20px;" class="top-1 p3">Insights</h2>
					
					<p style="padding: 20px;" align="justify">A member of Preferred Hotels & Resorts LEGEND Collection,
						Boston’s only Forbes Five-Star water-front hotel welcomes guests
						arriving by land or sea. Located on the historic Rowes Wharf
						Harbor, Hotel Pelican's inviting ambiance and unparalleled service
						provide the ideal home away from home for travelers. Luxurious
						accommodations with sweeping views of Boston’s cityscape or
						breathtaking water-front, a contemporary spa and fitness center,
						world-class dining and a 34-slip marina make Hotel Pelican a
						destination Beyond compare. An exclusive heritage business hotel,
						Hotel Pelican offers travelers the perfect blend of heritage,
						luxury and business on the shores of Boston. Wonderfully furnished
						rooms, elegantly designed surroundings and a quiet environment in
						a sprawling landscape amidst the city make it a favorite retreat
						for travelers.It is also a hub for those who seek to explore the
						city, the surrounding towns and tourist attractions.</p>
					<p class="line-1"></p>
				
				</div>
				<div class="clear"></div>
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