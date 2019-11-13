<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면 </title>
</head>
<body>
	<form action="loginprocess.jsp"  method="post" >
		<input type='text'  id='id'  name='id'
		required='required'
		placeholder='아이디를 입력하세요!' /><br/>
		<input type='text'  id='pw'  name='pw'
		required='required'
		placeholder='비밀번호를 입력하세요!' /><br/>
		
		<input type='submit' value='로그인'/>
	</form>
</body>
</html>