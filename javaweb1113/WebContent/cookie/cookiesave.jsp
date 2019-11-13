<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//파라미터 읽기 
		String language = 
			request.getParameter("language");
		//읽은 내용을 쿠키에 저장 
		Cookie cookie = 
			new Cookie("language", language);
		response.addCookie(cookie);		
	%>
</body>
<script>
//cookieselect.jsp로 이동 
	location.href = 'cookieselect.jsp';
</script>
</html>