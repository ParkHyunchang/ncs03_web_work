<%@page import="test.dto.FriendsDto"%>
<%@page import="test.dao.FriendsDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// FriendsDao 객체의 참조값 얻어오기
	FriendsDao dao=FriendsDao.getInstance();
	// 회원목록 얻어오기
	List<FriendsDto> list=dao.getList();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fiends/list.jsp</title>
<link rel="stylesheet" href="../resource/css/bootstrap.css" />
</head>
<body>
<a href="insertform.html">회원 추가하기</a>
<h3>회원 목록 페이지 입니다.</h3>
<div class="container">
	<table class="table">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>이메일</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<%for(FriendsDto tmp:list){%>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getName() %></td>
				<td><%=tmp.getPhone() %></td>
				<td><%=tmp.getEmail() %></td>
				<td><a href="updateform.jsp?num=<%=tmp.getNum()%>">수정</a></td>
				<td><a href="delete.jsp?num=<%=tmp.getNum()%>">삭제</a></td>
			</tr>
		<%} %>
		</tbody>
	</table>
</div>
</body>
</html>


