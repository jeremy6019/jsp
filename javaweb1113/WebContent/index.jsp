<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 사용 </title>
</head>
<body>
<%
	if(session.getAttribute("id")==null){
		out.println("<a href='login.jsp'>로그인</a><br/>");
	}else{
		out.println("<a href='logout.jsp'>" +
	    session.getAttribute("nick")+"님 " +
		"로그아웃</a><br/>");
	}
%>
	
	<a href='authentication.jsp'>인증</a><br/>
	<a href='authorization.jsp'></a>인가<br/>
	
</body>
</html>