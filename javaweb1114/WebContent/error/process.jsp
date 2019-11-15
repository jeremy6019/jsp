<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="./errordisp.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외가 발생하는 페이지 </title>
</head>
<body>
	<%
		String str; 
		//str이 null 인데 메소드를 호출하기 때문에 
		//NullPointException발생 
		out.println(str.toUpperCase());
	%>

</body>
</html>