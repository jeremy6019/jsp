<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청을 처리하고 결과를 출력</title>
</head>
<body>
	<%
		// 접속한 클라이언트의 IP 가져오기
		// IP를 이용해서 국가 분류를 할 수 있습니다.
		String ip = request.getRemoteAddr();
	
		// requestURI는 전체 요청 경로(서버경로+세부경로)
		// contextPath는 서버 경로
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		
		// contextPath의 길이를 저장
		int len = contextPath.length();
		
		// 요청 경로에서 공통 부분을 제거하기
		// requestURI에서 contextPath 부분을 제거
		String path = requestURI.substring(len);
	%>
	<p>클라이언트의 IP:<%=ip %></p>
	<p>요청 경로:<%=path %></p>
</body>
</html>