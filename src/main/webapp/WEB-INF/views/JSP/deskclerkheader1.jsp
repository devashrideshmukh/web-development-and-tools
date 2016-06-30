<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>RealEstate</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/css/reset.css">
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/css/style.css">
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/css/grid_12.css">
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/css/slider1.css">

<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/css/jqtransform.css">

<script src="<%=request.getContextPath() %>/js/jquery-1.7.min.js"></script>
<script src="<%=request.getContextPath() %>/js/jquery.easing.1.3.js"></script>
<script src="<%=request.getContextPath() %>/js/cufon-yui.js"></script>
<script src="<%=request.getContextPath() %>/js/vegur_400.font.js"></script>
<script src="<%=request.getContextPath() %>/js/Vegur_bold_700.font.js"></script>
<script src="<%=request.getContextPath() %>/js/cufon-replace.js"></script>
<script src="<%=request.getContextPath() %>/js/tms-0.4.x.js"></script>
<script src="<%=request.getContextPath() %>/js/jquery.jqtransform.js"></script>
<script src="<%=request.getContextPath() %>/js/FF-cash.js"></script>
<script>
$(document)
    .ready(function () {
    $('.form-1')
        .jqTransform();
    $('.slider')
        ._TMS({
        show: 0,
        pauseOnHover: true,
        prevBu: '.prev',
        nextBu: '.next',
        playBu: false,
        duration: 1000,
        preset: 'fade',
        pagination: true,
        pagNums: false,
        slideshow: 7000,
        numStatus: false,
        banners: false,
        waitBannerAnimation: false,
        progressBar: false
    })
});
</script>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
<![endif]-->
</head>
<body>
<div class="main">
  <!--==============================header=================================-->
  <header>
    <div>
      <h1><a href="index.html"><img src="<%=request.getContextPath() %>/images/logo.jpg" alt=""></a></h1>
      <div class="social-icons"> <span>Welcome ,</span><span>Pramit(DESKCLK_1)</span>  </div>
      <div id="slide">
         <div class="slider">
          <img src="<%=request.getContextPath() %>/images/slider-1-small.jpg" alt=""></li>
           
          
        </div>
        <a href="#" class="prev"></a><a href="#" class="next"></a> </div>
      <nav>
        <ul class="menu">
          <li class="current"><a href="<%=request.getContextPath()%>/TransportClerkController?source=gotohome">Home</a></li>
          <li><a href="<%=request.getContextPath() %>/jsp/deskAboutUs.jsp">Insights</a></li>
          <li><a href="#">Clients</a></li>
          <li><a href="<%=request.getContextPath() %>/jsp/deskContactUs.jsp">Contacts</a></li>
          <li><a href="#">FAQs</a></li>
      		<li>&nbsp;</li>
      		<li><a href="<%=request.getContextPath() %>/jsp/logout.jsp">Logout</a></li>
        </ul>
      </nav>
    </div>
  </header>

</body>
</html>