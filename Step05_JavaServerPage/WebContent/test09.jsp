<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test09.jsp</title>
<link rel="stylesheet" href="resource/css/bootstrap.css" />
</head>
<body>
<%
	// active 라는 파라미터 명으로 전달되는 문자열을 읽어온다.
	String active=request.getParameter("active");
	if(active==null){
		active="one";
	}
%>
<div class="navbar navbar-inverse"></div>
<div class="container">
	<ul class="nav nav-tabs">
		<li <%if(active.equals("one")){ %>class="active"<%} %>>
			<a href="test09.jsp?active=one">하나</a>
		</li>
		<li <%if(active.equals("two")){ %>class="active"<%} %>>
			<a href="test09.jsp?active=two">두울</a>
		</li>
		<li <%if(active.equals("three")){ %>class="active"<%} %>>
			<a href="test09.jsp?active=three">세엣</a>
		</li>
	</ul>
</div>
</body>
</html>