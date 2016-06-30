<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/myTheme/CSS/content.css">
<title>Hotel Pelican | Contact Us</title>
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
		<center>
			<div id="content" style="padding-left: 300px;">
			
				<div class="container_12">
				<div class="grid_8" style="width: 50%;">
					<img style="width: 700px; height: 200px;"
						src="${pageContext.request.contextPath}/resources/myTheme/IMAGES/contactus.jpg"
						alt="" class="img-border" width="100%" height="20%">
					<h2 class="top-1 p3">Contact Us</h2>
					
					<p>
						
					<div id="address">
						<table>
							<tr style="padding-bottom: 10%; margin-bottom: 10%;">
								<td style="width: 300px">
									<address>
										<b style="color: #2098f5">North America</b> <br>Hotel
										Pelican, Boston<br> 85 Rowes Wharf,<br>Boston, <br>MA
										02112 <br> USA <br> Tel :617.439.7020<br> Fax:
										617.330.9450<br>
									</address>

								</td>
								
								<td style="width: 300px"><span>
										<address>
											<b style="color: #2098f5">Latin America</b> <br>Hotel
											Pelican, Panama City<br>207 US Hwy 231,<br>Panama
											City, <br>FL 32003-470,<br> USA<br> Tel :
											044-6688 8000<br> Fax: 044-6688 8080<br>

										</address>

								</span></td>

								<td style="width: 300px"><span>
										<address>
											<b style="color: #2098f5">Europe</b> <br>Hotel Pelican,
											San Stefano<br>399 El Geish Road, <br>P.O Box 164,
											<br>Alexandria ,<br> Egypt<br> Tel : +20 (3)
											581-8000<br> Fax: +20 (3) 581-8080<br>
										</address>
								</span></td>
							</tr>

							<tr style="color: #2098f5; font-weight: bold;">
								<td>------------------------------------</td>
								<td>--------------------------------</td>
								<td>---------------------------------</td>
							</tr>

							<tr>
								<td style="width: 300px">
									<address>
										<b style="color: #2098f5">Asia</b> <br>Hotel Pelican, Mumbai<br> 10 Marine Drive, <br>Mumbai, <br>Maharashtra 411022,<br> India<br> Tel : 066-2233 4000<br>
										Fax: 066-2233 4040<br>


									</address>
									
								</td>
								
								<td style="width: 300px"><span>
										<address>
											<b style="color: #2098f5">Middle East</b> <br>Hotel
											Pelican, Dubai<br>The Palm, <br>Crescent Road, <br>The
											Palm<br> United Arab Emirates<br> Tel : +971 4 426
											2000 <br> Fax: 001-4425 7070<br>
										</address>
								</span></td>

								<td style="width: 300px"><span>
										<address>
											<b style="color: #2098f5">Africa</b> <br>Hotel Pelican,<br> Sirons Road, <br>Near Manly Beach, <br>Ethopia,<br> Africa<br> Tel : 061-6589 7894<br>
											Fax: 061-4589 8526<br>
										</address>
								</span></td>
							</tr>

						</table>
						
					</div>
					</div>
					<div class="clear"></div>
					</div>
			
				
			</div>

</center>

			


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