<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/css/reset.css">
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/css/style.css">
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/css/grid_12.css">
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/css/slider.css">
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
        duration: 2,
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
</head>
<body>
<div class="main">
      <div id="slide">
        <div class="slider">
          <ul class="items">
            <li><img src="<%=request.getContextPath() %>/images/map1.png" alt=""></li>
            <li><img src="<%=request.getContextPath() %>/images/map2.png" alt=""></li>
            <li><img src="<%=request.getContextPath() %>/images/map3.png" alt=""></li>
          </ul>
        </div></div></div>
</body>
</html>