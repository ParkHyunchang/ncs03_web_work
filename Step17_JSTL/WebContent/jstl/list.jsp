<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	MemberDto dto1=new MemberDto(1, "김구라", "노량진");
	MemberDto dto2=new MemberDto(2, "해골", "행신동");
	MemberDto dto3=new MemberDto(3, "원숭이", "상도동");
	
	List<MemberDto> list = new ArrayList<MemberDto>();
	list.add(dto1);
	list.add(dto2);
	list.add(dto3);
	request.setAttribute("list", list);
	// 위의 작업은 Action 객체에서 하고 list.jsp 페이지로 이동 했다고 가정하자...
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/jstl/list.jsp</title>
</head>
<body>
<h3>회원 목록 입니다.</h3>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>주소</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="tmp" items="${list }">
		<tr>
			<td>${tmp.num }</td>
			<td>${tmp.name }</td>
			<td>${tmp.addr }</td>
		</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>