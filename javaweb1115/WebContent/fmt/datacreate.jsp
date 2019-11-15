<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터를 생성해주는 파일</title>
</head>
<body>
	<%
		//java.util.Date객체를 만들고 세션에 저장 
		java.util.Calendar cal = 
			new java.util.GregorianCalendar(
					1986, 4, 5, 14, 0, 0);
	    java.util.Date date = 
	    		new java.util.Date(
	    				cal.getTimeInMillis());
	    session.setAttribute("date", date);
	    
	    session.setAttribute("num", 300000000);
	%>
	
	<a href='datadisplay.jsp'>데이터 출력</a>
</body>
</html>