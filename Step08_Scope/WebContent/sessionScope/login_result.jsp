<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/sessionScope/login_result.jsp</title>
</head>
<body>
<%
	//session 영역에 담긴 내용을 읽어온다.
	String id=(String)session.getAttribute("id");
%>
<%if(id == null){ %>
	<a href="loginform.jsp">로그인</a>
<%}else{ %>
	<p> <strong><%=id %> 회원님 로그인 중....</strong></p>
	<a href="logout.jsp">로그아웃</a>
<%} %>
</body>
</html>