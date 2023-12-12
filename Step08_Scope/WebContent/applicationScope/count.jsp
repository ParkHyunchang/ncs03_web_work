<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>applicationScope/count.jsp</title>
</head>
<body>
<%
	/*
		ServletContext type 객체인 aplication 객체에 무언가를 저장하면
		임의로 지우지 않는 이상 서버가 켜져 잇는동안 유지된다.
		따라서 모든 클라이언트가 공유할수 있는 정보를 담을수 있다.
		
		거의 사용하지 않음...
	*/
	application.setAttribute("myName","김구라");

	//count 라는 키 값으로 저장된 값이 있는지 읽어와 본다.
	Integer count=(Integer)application.getAttribute("count");
	//만일 저장된 값이 없다면
	if(count==null){
		// count를 1로 지정하고
		count=1;
		// 저장한다.
		application.setAttribute("count", count);
	}else{//저장된 값이 있다면
		count++; // 카운트를 증가 시켜서
		//저장한다.
		application.setAttribute("count", count);
	}
%>
<h3>안녕하세요</h3>
<p>당신은 서버를 startup 시킨 이후 <strong><%=count %></strong> 번째 방문한 클라이언트 입니다.</p>
<a href="other_page.jsp">다른 페이지로 이동</a>
</body>
</html>

















