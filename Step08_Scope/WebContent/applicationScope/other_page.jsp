<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>applicationScope/other.jsp</title>
</head>
<body>
<%
	// application 영역에 저장된 문자열 읽어오기
	String myName=(String)application.getAttribute("myName");
%>
<p> application 영역에 저장된 문자열: <%=myName %></p>
</body>
</html>