<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 라이브러리 사용할 준비 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/jstl/test02.jsp</title>
</head>
<body>
<h3>jstl의 if문</h3>
<c:if test="${10 gt 2 }">
	<p>10 은 2 보다 커요</p>
</c:if>
<c:if test="${10 lt 2 }">
	<p>10 은 2 보다 작아요</p>
</c:if>
<%request.setAttribute("myName", "hyunchang"); %>
<h3>myName 이 비어 있는지 여부</h3>
<c:if test="${empty myName }">
	<p>myName을 찾을수가 없습니다.(비어 있음)</p>
</c:if>

<h3>myName 이 비어 있지 않은지 여부</h3>
<c:if test="${not empty myName }">
	<p>myName 은 비어 있지 않습니다. 내용:<strong>${myName }</strong></p>
</c:if>
</body>
</html>