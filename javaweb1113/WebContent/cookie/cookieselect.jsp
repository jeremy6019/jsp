<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키의 정보를 읽어서 적용한 화면 </title>
<%
	//language의 기본 값 설정 
	String language = "english";
	//모든 쿠키 가져오기 
	Cookie[]cookies = request.getCookies();
	//쿠키가 존재하면 순회 
	if(cookies != null){
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("language")){
				//쿠키의 값을 language에 저장 
				language = cookie.getValue();
				break;
			}
		}
	}
	
	//참조형의 동일성을 확인할 때 상수를 가지고 메소드 호출 
	//NullPointException을 방지하기 위해서 
	if("korean".equals(language)){
		out.println("<h3>안녕하세요 반갑습니다. </h3>");
	}else{
		out.println("<h3>Welcome! long time no see!!</h3>");
	}
	
%>
</head>
<body>
	<form action="cookiesave.jsp">
		<input type="radio" name="language"
		value="english" 
		<%if("korean".equals(language)==false){ %>
		checked='checked'<% } %>
		/>영어로 보기 
		<input type="radio" name="language"
		value="korean"
		<%if("korean".equals(language)==true){ %>
		checked='checked'<% } %> 
		/>한국어로 보기<br/>
		<input type="submit" value="저장" /> 
		
	</form>
</body>
</html>