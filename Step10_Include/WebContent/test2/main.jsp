<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/test2/main.jsp</title>
</head>
<body>
<%
	// include 된 페이지에 전달할 데이터가 있다면 request 에 담는다.
	request.setAttribute("name", "김구라");
%>
<%@ include file="header.jsp" %>
<div>
	<h3>메인 컨텐츠 입니다.</h3>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid commodi perferendis accusantium eius iste ad reprehenderit vero totam suscipit voluptatibus tempora beatae sunt enim repudiandae iure fuga soluta mollitia delectus!</p>
	
</div>
<%@ include file="footer.jsp" %>
</body>
</html>