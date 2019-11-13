<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OUT 객체</title>
</head>
<body>
	<%
		String msg = "Out 객체를 이용한 출력";
		// out 객체를 이용한 출력
		out.print("<P align='center'>");
		out.print("메시지 : " + msg);
		out.print("</p>");
	%>
	
	<%@ page import="java.util.*" %>
	<%
		java.util.List<String> list = new java.util.ArrayList<>();
		list.add("Application Programming");
		list.add("Embedded Programming");
		list.add("Web Programming");
		list.add("Mobile Programming");
		list.add("Front End Programming");
		
		out.print("<ul>");
		// out 객체를 사용하지 않는 경우
		for(String task : list){
	%>
	<li><%=task %></li>
	<%} %>
	</ul>
	
	<%
		out.print("<ol>");
		for(String task : list){
			out.print("<li>" + task + "</li>");
		}
		out.print("</ol>");
	%>
</body>
</html>