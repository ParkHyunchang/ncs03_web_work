<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//request 영역에 "myName" 이라는 키값으로 String type 저장하기
	request.setAttribute("myName", "김구라");
	request.setAttribute("ourName", "에이콘");
	
	//session 영역에 저장
	session.setAttribute("id", "kimgura");
	
	//application 영역에 저장
	application.setAttribute("count", 999);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>scope/test02.jsp</title>
</head>
<body>
<%
	String myName=(String)request.getAttribute("myName");
%>
<p>request 영역에 저장된 문자열 : <strong><%=myName %></strong></p>
<p>request 영역에 저장된 문자열 : <strong>${requestScope.ourName }</strong></p>
<p>request 영역에 저장된 문자열 : <strong>${ourName }</strong></p>

<p>session 영역에 저장된 문자열 : <strong>${sessionScope.id }</strong></p>
<p>session 영역에 저장된 문자열 : <strong>${id }</strong></p>

<p>application 영역에 저장된 문자열 : <strong>${applicationScope.count }</strong></p>
<p>application 영역에 저장된 문자열 : <strong>${count }</strong></p>
</body>
</html>