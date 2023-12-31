<%@page import="test.board.dao.BoardDao"%>
<%@page import="test.board.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 파라미터로 전달되는 수정할 글정보를 읽어온다.
	request.setCharacterEncoding("utf-8");
	int num=Integer.parseInt(request.getParameter("num"));
	String title=request.getParameter("title");
	String author=request.getParameter("author");
	String publisher=request.getParameter("publisher");
	String regdate=request.getParameter("regdate");
	//2. BoardDto 객체에 담아서
	BoardDto dto=new BoardDto();
	dto.setNum(num);
	dto.setTitle(title);
	dto.setAuthor(author);
	dto.setPublisher(publisher);
	dto.setRegdate(regdate);
	//3. BoardDao 객체를 이용해서 수정반영하고
	boolean isSuccess = BoardDao.getInstance().update(dto);
	//4. 응답한다.
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/book/update.jsp</title>
</head>
<body>
<% if(isSuccess){ %>
	<script>
		alert("수정했습니다.");
		location.href="list.jsp";
	</script>
<%}else{ %>
	<script>
		laert("수정 실패!");
		location.href="list.jsp";
	</script>
<%} %>
</body>
</html>