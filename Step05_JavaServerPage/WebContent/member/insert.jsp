<%@page import="test.dto.MemberDto"%>
<%@page import="test.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 여기는 서블릿의 service() 메소드 안쪽이라고 생각하면 됩니다.
	
	// HttpServletRequest 객체가 기본 제공된다.
	
	// 1.폼 전송된 이름과 주소 읽어 오기
	
	// 한글 깨지지 않도록 
	request.setCharacterEncoding("utf-8");
	
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
	// MemberDto 객체에 회원의 정보 저장하기
	MemberDto dto=new MemberDto();
	dto.setName(name);
	dto.setAddr(addr);
	// 2.DB 에 저장하기
	MemberDao dao=MemberDao.getInstance();
	boolean isSuccess=dao.insert(dto);
	// 3.응답하기
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/member/insert.jsp</title>
</head>
<body>
<%if(isSuccess){ %>
	<p>저장했습니다.</p>
<%}else{ %>
	<p>저장 실패!!</p>
<%} %>
<a href="list.jsp">목록보기</a>
</body>
</html>