<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다른 파일을 포함할 파일 </title>
</head>
<body>

	
	<!--  
	<jsp:include page="temp.jsp"></jsp:include>  
	-->
	
	<%@ include file="temp.jsp" %>
	
	<p>결과:<%=result %></p>
	
</body>
</html>