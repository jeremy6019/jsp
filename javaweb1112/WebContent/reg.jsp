<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클라이언트가 서버에게 요청</title>
</head>
<body>
	<!-- 초기화 파라미터 읽기 -->
	<%
		String url = application.getInitParameter("dburl");
		out.print("초기화 파라미터 : " + url);
	%>

	<!-- 태그로 요청 : a, form -->
	<a href="reqinfo.jsp">request객체 사용</a><br/>
</body>

<!--  Javascript로 요청 -->
</html>