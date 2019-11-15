<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  jstl의 core기능을 사용하기 위한 설정  -->
<%@ taglib prefix="c"
uri= "http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL의 분기문 테스트</title>
</head>
<body>
	<%
		int score = 
			Integer.parseInt(
			request.getParameter("score"));
		
	%>
	
	<c:if test="${param.score >= 60}">
		<p>합격</p> 
	</c:if>	
</body>
</html>