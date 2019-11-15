<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 출력 </title>
</head>
<body>
	<%
	/*	
	    int num = 
			(Integer)session.getAttribute("num");
		String name = 
				(String)session.getAttribute("name");
		out.println("<h3>"+ num + "</h3>");
		out.println("<h3>"+ name + "</h3>");
		*/
	%>
	<!--  scope가 없으면 
      page, request, session, application순으로 조회  -->
	<h3>${num}</h3>
	<!--  범위를 직접 지정session.getAttribute("name")과 같은 문장  -->
	<h3>${sessionScope.name}</h3> 
	
</body>
</html>