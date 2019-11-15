<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 생성</title>
</head>
<body>
	<%
		String msg = "Hello Java!!";
		session.setAttribute("msg", msg);
	%>
	<a href="datadisplay.jsp">데이터 출력</a>
</body>
</html>