<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test08.jsp</title>
<!-- bootstrap.css 로딩하기 -->
<link rel="stylesheet" href="resource/css/bootstrap.css" />
</head>
<body>
<% 
	//String active="one"; 
	String active="two"; 
	//String active="three"; 
%>
<div class="navbar navbar-inverse"></div>
<div class="container">
	<ul class="nav nav-tabs">
		<%if(active.equals("one")){ %>
			<li class="active"><a href="">하나</a></li>
			<li><a href="">두울</a></li>
			<li><a href="">세엣</a></li>
		<%}else if(active.equals("two")){ %>
			<li><a href="">하나</a></li>
			<li class="active"><a href="">두울</a></li>
			<li><a href="">세엣</a></li>
		<%}else if(active.equals("three")){ %>
			<li><a href="">하나</a></li>
			<li><a href="">두울</a></li>
			<li class="active"><a href="">세엣</a></li>
		<%} %>
	</ul>

	<ul class="nav nav-tabs">
		<li <%if(active.equals("one")){ %>class="active"<%} %>><a href="">하나</a></li>
		<li <%if(active.equals("two")){ %>class="active"<%} %>><a href="">두울</a></li>
		<li <%if(active.equals("three")){ %>class="active"<%} %>><a href="">세엣</a></li>
	</ul>

</div>
</body>
</html>









