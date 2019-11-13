<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성</title>
</head>
<body>
	<%
		//쿠키 생성 	
		Cookie cookie = 
			new Cookie("id","idstudy");
		// 쿠키 저장 
		response.addCookie(cookie);
		
		cookie = 
			new Cookie("nickname", "붉은곰");
		response.addCookie(cookie);
	%>
	
	<a href= 'cookieread.jsp'>쿠키 읽기</a><br/>
</body>
</html>