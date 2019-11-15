<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 출력</title>
</head>
<body>
<%
	//파라미터 읽기 
	String name = request.getParameter("name");
	int age = Integer.parseInt(
		request.getParameter("age"));
	//파라미터 출력 
	out.println("<p>이름:" + name + "</P>");
	out.println("<p>나이:" + age + "</P>");
    	
%>
<!-- 파라미터 출력하기  -->
<h3>파라미터 출력하기 </h3>
<p>이름:${param.name}</p>
<p>나이:${param["age"]}</p>

<!-- 쿠키 출력하기  -->
<h3>쿠키 출력하기 </h3>
<p>주소:${cookie.address.value}</p>

<%
	//모든 쿠키 가져오기 
	Cookie[] cookies = 
		request.getCookies();
	if(cookies != null){
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("address")){
				String address = 
						cookie.getValue();
				//디코딩 하기 
				address = java.net.URLDecoder.decode(
						address, "utf-8");
				out.println(address);
			}
		}
	}
%>


</body>
</html>