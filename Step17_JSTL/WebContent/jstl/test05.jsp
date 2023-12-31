<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<% 
	request.setAttribute("count", 3955567);
	request.setAttribute("price", 39800);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/jstl/test05.jsp</title>
</head>
<body>
<h3>숫자 format 테스트</h3>
<p> 카운트 : <strong>${count }</strong></p>
<p> 3자리 , 찍어주기 : <strong>
					<fmt:formatNumber value="${count }" type="number"/> 
				</strong>
</p>
<p> 가격 : <fmt:formatNumber value="${price }" type="currency"/> </p>
<p> 가격(달러) : <fmt:formatNumber value="${price }" type="currency" 
					currencySymbol="$"/> </p>
<p> 소수점 두자리 : <fmt:formatNumber value="1234.5678" pattern=".00"/> </p>
</body>
</html>