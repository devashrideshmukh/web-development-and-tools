<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1" style="border-collapse:collapse;text-align:center;">
<tr>
<th style="background-color: #424542;">
<b style="color: white;">Tag Cloud</b>
</th>
</tr>
<tr>
<td>
<div style="padding:10px;border-width:2px">
   			<a href="<%=request.getContextPath()%>/TransportClerkController?source=viewPendingRequest" style="font-size:19px;text-decoration:underline; color: #2098f5;">ViewAllPendingRequest</a><br>  
  			<a href="<%=request.getContextPath()%>/TransportClerkController?source=viewServedRequest" style="font-size:18px;text-decoration:underline; color: #2098f5;">ViewAllConfirmedRequest</a>  <br>
   			<a href="<%=request.getContextPath()%>/TransportClerkController?source=viewassigned" style="font-size:18px;text-decoration:underline; color: #2098f5;">ViewAllAssignedVehicles</a>  <br>
   			<a href="<%=request.getContextPath()%>/jsp/ContactUs.jsp" style="font-size:23px;text-decoration:underline; color: #2098f5;">ContactUs</a>  
   			<a href="<%=request.getContextPath()%>/TransportClerkController?source=gotohome" style="font-size:24px;text-decoration:underline; color: #2098f5;">Home</a>  <br>
   			<a href="<%=request.getContextPath()%>/TransportClerkController?source=viewavailable" style="font-size:20px;text-decoration:underline; color: #2098f5;">ViewAllAvailableVehicles</a>  <br>
   			
			
</div>
</td>
</tr>
</table>
</body>
</html>