<%@page import="java.util.List"%>
<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/member/list.jsp</title>
</head>
<body>
<%
	//request 에 담긴 회원목록 얻어오기
	List<MemberDto> list=(List<MemberDto>)request.getAttribute("list");
%> 
<h3>/member/detail 요청을 처리하는 서블릿으로 부터 응답을 위임받은 jsp 페이지 입니다.</h3>
<h3>회원 목록 페이지 입니다.</h3>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>주소</th>
		</tr>
	</thead>
	<tbody>
	<%for(MemberDto tmp:list){%>
		<tr>
			<td><%=tmp.getNum() %></td>
			<td><%=tmp.getName() %></td>
			<td><%=tmp.getAddr() %></td>
		</tr>
	<%} %>
	</tbody>
</table>
</body>
</html>