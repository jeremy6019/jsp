<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인증 페이지</title>
</head>
<body>

	<%
		if(session.getAttribute("id")== null){
			session.setAttribute("login", "authentication");
			session.setAttribute("url", "authentication.jsp");
			response.sendRedirect("login.jsp");
		}
	%>
	<p>로그인을 해야만 확인할 수 있는 페이지</p>
</body>
</html>