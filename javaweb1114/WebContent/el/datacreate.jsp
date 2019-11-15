<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 생성 페이지 </title>
<%
	int num = 100; 
    String name = "진로";
    
    //데이터 저장 
    session.setAttribute("num", num);
    session.setAttribute("name", name);
    
    //결과 출력 페이지로 리다이렉트 
    response.sendRedirect("datadisplay.jsp");
%>
</head>
<body>

</body>
</html>