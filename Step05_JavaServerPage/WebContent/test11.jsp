<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test11.jsp</title>
</head>
<body>
<%
	// 폼전송된 파라미터 읽어오기
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	
	// 아이디 비밀번호가 유효한지 여부
	boolean isValid=false;
	
	// 가상으로 아이디 비밀번호 확인하기
	if(id.equals("gura") && pwd.equals("1234")){
		isValid=true;
	}
%>
<h3>로그인 처리 결과</h3>
<%if(isValid){ %>
<p> <strong><%=id %></strong> 회원님 반갑습니다.</p>
<%}else{%>
<script>
	alert("아이디 혹은 비밀번호가 틀려요!");
	location.href="test11.html";
</script>
<%} %>
</body>
</html>