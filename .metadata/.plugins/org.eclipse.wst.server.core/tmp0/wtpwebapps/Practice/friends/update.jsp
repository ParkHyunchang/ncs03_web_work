<%@page import="test.dao.Dao"%>
<%@page import="test.dto.Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	// 수정할 회원의 정보를 읽어온다.
	request.setCharacterEncoding("utf-8");
	int num=Integer.parseInt(request.getParameter("num"));
	String name=request.getParameter("name");
	String phone=request.getParameter("phone");
	String email=request.getParameter("email");
	//Dto 객체에 담는다.
	Dto dto=new Dto(num, name, phone, email);
	//Dao 객체를 이용해서 수정반영한다.
	Dao dao=Dao.getInstance();
	dao.update(dto);
	//응답한다.
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/member/update.jsp</title>
</head>
<body>
<script>
	alert("<%=num%> 번 회원의 정보를 수정했습니다.");
	location.href="list.jsp";
</script>
</body>
</html>