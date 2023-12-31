<%@page import="test.board.dao.FileDao"%>
<%@page import="test.board.dto.FileDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/file/list.jsp</title>
</head>
<body>
<%
	//파일 목록을 얻어와서 목록 출력하기 
	List<FileDto> list=FileDao.getInstance().getList();
%>
<h3>파일 목록입니다.</h3>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>파일명</th>
			<th>크기</th>
			<th>등록일</th>
			<th>삭제</th>
		</tr>
	</thead>
	<tbody>
	<%for(FileDto tmp:list){ %>
		<tr>
			<td><%=tmp.getNum() %></td>
			<td><%=tmp.getWriter() %></td>
			<td><%=tmp.getTitle() %></td>
			<td><a href="download.jsp?num=<%=tmp.getNum()%>"><%=tmp.getOrgFileName() %></a></td>
			<td><%=tmp.getFileSize() %> <strong>bytes</strong></td>
			<td><%=tmp.getRegdate() %></td>
			<td><a href="delete.jsp?num=<%=tmp.getNum()%>">삭제</a></td>
		</tr>
	<%} %>	
	</tbody>
</table>
</body>
</html>












