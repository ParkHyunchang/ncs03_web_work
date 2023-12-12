<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// active 라는 파라미터 명으로 전달되는 문자열 읽어오기
	String active=request.getParameter("active");
%>
<div class="navbar navbar-inverse">
	<div class="navbar-header">
		<ul class="nav navbar-nav">
			<li <%if(active.equals("home")){ %>
					class="active"
				<%} %>>
				<a href="home.jsp">Home</a>
			</li>
			<li <%if(active.equals("game")){ %>class="active"<%} %>><a href="game.jsp">Game</a></li>
			<li <%if(active.equals("contact")){ %>class="active"<%} %>><a href="contact.jsp">Contact</a></li>
		</ul>
	</div>
</div>