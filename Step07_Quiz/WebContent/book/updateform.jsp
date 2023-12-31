<%@page import="test.board.dao.BoardDao"%>
<%@page import="test.board.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//수정할 글번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//수정할 글의 자세한 정보를 얻어온다.
	BoardDto dto=BoardDao.getInstance().getData(num);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/book/updateform.jsp</title>
</head>
<body>
<h3>책 수정 페이지 입니다.</h3>
<form action="update.jsp" method="post">
	<input type="hidden" name="num" value="<%=dto.getNum() %>" />
	<label for="num">책번호</label>
	<input type="text" id="num" value="<%=dto.getNum()%>" 
			disabled="disabled"/>
	<br/>
	<label for="title">제목</label>
	<input type="text" name="title" id="title" 
		value="<%=dto.getTitle()%>"/>
	<br/>
	<label for="atuhor">저자</label>
	<input type="text" name="atuhor" id="atuhor" 
		value="<%=dto.getAuthor()%>"/>
	<br/>
	<label for="publisher">출판사</label>
	<input type="text" name="publisher" id="publisher" 
		value="<%=dto.getAuthor()%>"/>
	<br/>	
	<button type="submit">수정확인</button>
	<button type="reset">취소</button>
</form>
</body>
</html>












