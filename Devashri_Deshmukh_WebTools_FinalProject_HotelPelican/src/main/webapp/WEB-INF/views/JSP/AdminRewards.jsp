<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/content.css">
<title>Hotel Pelican | Accolades</title>
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
		<br>
		<br>
			<div id="content">
			<center>
				
			<div class="award-column1 column">
				<div class="award-content">
					<div style="position: relative; left: 30px">

						<div class="award-heading">
							<strong><font color="black" size="100px"><h2>
										<b>Accolades</b>
									</h2></font></strong>
						</div>


						<h3>
							<font color="#2098f5">Exceeding Expectations...</font>
						</h3>





						<ol>
							<strong>Forbes Five-Star Hotel | AAA Four-Diamond Hotel
							</strong><br>
							<br> <strong>Expedia Insiders’ Select - 2012, 2013,
								2014</strong><br>
							<br> <strong>Conde Nast Johansens Award for Most
								Excellent Service 2012</strong><br>
							<br> <strong>Conde Nast Traveler's Best Business
								Travel Hotels in the World - 2013, 2014</strong><br>
							<br> <strong>Conde Nast Traveler's Readers' Choice
								Awards, 2014</strong><br>
							<br> <strong>Travel + Leisure WORLD'S BEST Hotels -
								2012, 2013, 2014</strong><br>
							<br> <strong>U.S. News & World Report Best Hotels
								in the USA - 2012, 2013, 2014</strong><br>
							<br> <strong>Banker & Tradesman Best of 2011, 2012,
								2013, 2014</strong><br>
							<br> <strong>SMART Meetings Platinum Choice Award
								Winner 2012, 2013, 2014</strong><br>
							<br> <strong>The Boston Business Journal’s Most
								Admired Hotel - 2012, 2013, 2014</strong> <br>
							<br> <strong>The Boston Business Journal's Top Ten
								Places To Work in Boston (Medium Category) - 2014</strong><br>
							
					</div>
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