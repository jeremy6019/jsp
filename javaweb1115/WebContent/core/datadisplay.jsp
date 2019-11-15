<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl의 core 기능을 사용하기 위한 설정 -->
<%@ taglib prefix="c" 
uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 출력</title>
</head>
<body>
	<!--  1부터 3끼지 1간격으로 cnt에 저장하면서 수행 -->
	<c:forEach var="cnt" begin="1" end="3" step="1">
		<p>${cnt}</p>
	</c:forEach>	 
	
	<h3>List출력</h3>
	
	<table border='1'>
	<c:forEach var="bteam" items="${list}">
		<tr><td>${bteam}</td></tr>
	</c:forEach>
	</table>
	
	<h3>데이터베이스</h3>
	<ul>
		<c:forTokens items="${db}" var="temp"
		delims=",">
			<li>${temp}</li>
		</c:forTokens>
	</ul>
	
</body>
</html>






