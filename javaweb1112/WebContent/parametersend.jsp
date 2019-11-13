<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 전송</title>
</head>
<body>
	<a href='parameterread.jsp?query=자바&detail=jsp'>get 방식의 파라미터 읽기</a><br/>
	
	<form action='parameterpost.jsp' method='post'>
		이름<input type="text" name="name"/><br/>
		<fieldset>
			<legend>사용 가능 언어</legend>
			<input type="checkbox" name="language" value="C"/>C언어
			<input type="checkbox" name="language" value="java"/>Java
			<input type="checkbox" name="language" value="python"/>Python
			<input type="checkbox" name="language" value="JavaScript"/>JavaScript
		</fieldset>
		
		<input type="submit" value="전송"/>
	</form>
	
	<a href='headerread.jsp'>헤더 읽기</a>
</body>
</html>