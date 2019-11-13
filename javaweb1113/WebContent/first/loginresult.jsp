<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과 출력 </title>
</head>
<body>
	<%
		//전송되어온 데이터를 읽어오기
		//원래 자료형으로 강제 형변환해서 가져오시 
	//	String msg = 
	//	(String)request.getAttribute("msg");
	
	    String msg = 
	        (String)session.getAttribute("msg"); 
	    
		//데이터 출력
		out.println("<h3>로그인 결과:");
		out.println(msg);
		out.println("</h3>");
		
	%>
</body>
</html>