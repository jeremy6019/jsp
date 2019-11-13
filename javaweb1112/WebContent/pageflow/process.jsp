<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>처리하는 페이지</title>
<%
	System.out.println("작업을 수행");
	//response.jsp 파일로 포워딩
	/*
	RequestDispatcher dispatcher = request.getRequestDispatcher("response.jsp");
	dispatcher.forward(request, response);
	*/
	
	// response.jsp로 리다이렉트
	response.sendRedirect("response.jsp");
%>
</head>
<body>

</body>
</html>