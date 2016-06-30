





<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 

"http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title></title>
		<!-- Start css3menu.com HEAD section -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style1.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
	<!-- End css3menu.com HEAD section -->
</head>
<body style="background-color:#EBEBEB">
	<ul id="css3menu1" class="topmenu">
		<li class="topfirst"><a href="#" style="width:240px;height:32px;line-height:32px;"><span>View All Requests</span></a>
			<ul>
				<li class="topfirst"><a href="<%=request.getContextPath()%>/TransportClerkController?source=viewServedRequest"" style="width:240px;height:32px;line-height:32px;"><span>View Confirmed Requests</span></a></li>
				<li class="topmenu"><a href="<%=request.getContextPath()%>/TransportClerkController?source=viewPendingRequest" target="_blank" style="width:240px;height:32px;line-height:32px;"><span>View Pending Requests</span></a></li>
			</ul>
		</li>
		<li class="topmenu"><a href="#" target="_blank" style="width:240px;height:32px;line-height:32px;"><span>View All Vehicles</span></a>
			<ul>
				<li class="topmenu"><a href="<%=request.getContextPath()%>/TransportClerkController?source=viewavailable" style="width:240px;height:32px;line-height:32px;"><span>View Available Vehicles</span></a>
			
		</li>
				<li class="topmenu"><a href="<%=request.getContextPath()%>/TransportClerkController?source=viewassigned" style="width:240px;height:32px;line-height:32px;"><span>View Assigned Vehicles</span></a>
			
		</li>
		
		<li class="topmenu"><a href="<%=request.getContextPath()%>/TransportClerkController?source=viewgaraged" style="width:240px;height:32px;line-height:32px;"><span>View Garaged Vehicles</span></a>
			
		</li>
</ul></li></ul>
<div id="tagcloud">
	<br><jsp:include page="DeskClerkCloud.jsp"></jsp:include>
	</div>
</body>
</html>
    