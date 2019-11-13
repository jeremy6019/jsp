<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post 방식으로 전송된 파라미터 읽기</title>
</head>
<body>
	<%
		// 파라미터 인코딩 설정
		// post 방식 전송에서 이 코드를 호출하지 않으면 파라미터에 영문과 숫자 이외의 글자가 있으면 깨짐
		request.setCharacterEncoding("utf-8");
	
		String name = request.getParameter("name");
		// 파라미터를 배열로 읽기
		String [] languages = request.getParameterValues("language");
	%>
	<p>이름:<%=name %></p>
	
	<%for(String language : languages){ %>
	<p>언어:<%=language %></p>
	<%} %>
	
</body>
</html>