<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 라이브러리 사용할 준비 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	// 아래 작업은 Action 객체에서 하고
	List<String> names=new ArrayList<String>();
	names.add("김구라");
	names.add("해골");
	names.add("원숭이");
	
	request.setAttribute("names", names);
	// 이 페이지로 forward 이동 되었다고 가정하자....
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jstl/test01.jsp</title>
</head>
<body>
<h3>반복문</h3>
<%for(int i=0; i<10; i++){ %>
	<strong><%=i %></strong> &nbsp;
<%} %>
<br/>
<c:forEach var="i" begin="0" end="9" step="1">
	<strong>${i } </strong> &nbsp;
</c:forEach>

<h3>request 에 담긴 내용을 반복문 이용해서 출력</h3>
<% List<String> names2=(List<String>)request.getAttribute("names");%>
<ul>
	<%for(String tmp:names2){ %>
		<li><%=tmp %></li>
	<%} %>
</ul>

<ul>
	<c:forEach var="tmp" items="${names }">
		<li>${tmp }</li>
	</c:forEach>
</ul>

</body>
</html>

















