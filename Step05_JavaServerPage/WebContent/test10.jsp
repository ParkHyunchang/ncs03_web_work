<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test10.jsp</title>
<link rel="stylesheet" href="resource/css/bootstrap.css" />
</head>
<body>
<%
	int pageNum=1;
	// pageNum 이라는 파라미터명으로 전달되는 문자열을 읽어와본다.
	String num=request.getParameter("pageNum");
	if(num != null){ // 만일 null 이 아니면
		// 문자열을 정수로 바꿔서 변수에 대입한다.
		pageNum=Integer.parseInt(num);
	}
	// 콘솔에 pageNum 출력해보기
	System.out.println(pageNum);
%>
<div class="container">
	<h3> <strong><%=pageNum %></strong> 페이지 입니다.</h3>
	<ul class="pagination">
		<%for(int i=1; i<6; i++){ %>
		<li <%if(pageNum==i){ %>class="active"<%} %>>
			<a href="test10.jsp?pageNum=<%=i %>"><%=i %></a>
		</li>
		<%} %>
	</ul>
</div>
</body>
</html>