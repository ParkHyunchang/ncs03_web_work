<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	System.out.println("/test/go7.jsp 요청 처리중...");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/test/go7.jsp</title>
</head>
<body>
<h3>5 초후에 /test/result7.jsp 페이지로 이동합니다.</h3>
<script>
	//javascript를 이용해서 5 초후에 "/test/result7.jsp"
	//페이지로 이동하도록 해 보세요.
	setTimeout(function() {
		location.href="result7.jsp"; 
	}, 5000);
</script>
</body>
</html>