<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인가 페이지 </title>
</head>
<body>
<%
	if(session.getAttribute("level") == null){
		session.setAttribute("login", "authentication");
		session.setAttribute("url", "authorization.jsp");
		response.sendRedirect("login.jsp");
	}else if("admin".equals(
			session.getAttribute("level"))==false){
		session.setAttribute("login","authorization");
		session.setAttribute("url", "authorization.jsp");
		response.sendRedirect("login.jsp");
	}
%>
	<p>관리자만 사용할 수 있는 페이지 입니다. </p>
</body>
</html>