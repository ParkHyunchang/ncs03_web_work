<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/test7/contact.jsp</title>
</head>
<body>
<%@ include file="myResource.jsp" %>
<jsp:include page="navbar.jsp">
	<jsp:param value="contact" name="active"/>
</jsp:include>
<div class="container">
	<h3>Contact 페이지 입니다.</h3>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus modi voluptates quaerat consequuntur eum iste eaque aliquid corrupti. Numquam nam fugit fugiat pariatur maxime praesentium voluptatem commodi ad. Repellendus dolore.</p>
</div>

</body>
</html>