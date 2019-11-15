<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>초기화 파라미터 사용</title>
</head>
<body>
	<%
		//자바코드를 이용해서 초기화 파라미터를 읽고 
		//출력하기 
		String java =
			application.getInitParameter("java");
	    out.println(java);
	    
	%>
	<!--  EL을 이용해서 초기 파라미터 출력 -->
	${initParam.java}
</body>
</html>