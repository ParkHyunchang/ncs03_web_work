<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index.jsp</title>
</head>
<body>
<h3>인덱스 페이지 입니다.</h3>
<ul>
	<li><a href="${pageContext.request.contextPath }/jstl/test01.jsp">jstl forEach</a></li>
	<li><a href="jstl/test02.jsp">jstl if</a></li>
	<li><a href="jstl/test03.jsp">jstl choose</a></li>
	<li><a href="jstl/test04.jsp">jstl set, out</a></li>
	<li><a href="jstl/test05.jsp">jstl fmt</a></li>
	<li><a href="jstl/list.jsp">회원목록 보기</a></li>
</ul>
</body>
</html>