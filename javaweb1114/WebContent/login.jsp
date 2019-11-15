<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<style>
	#disp{color: red;}
</style>
</head>
<body>
    <div id='disp'>
    <%
    String msg = "";
    //로그인에 실패해서 온 것인지 아니면 바로 온것인지 판단 
    if(session.getAttribute("login")!= null
    && session.getAttribute("login").equals("fail")){
    	msg = "없는 아이디이거나 비밀번호가 틀렸습니다.";
    	session.setAttribute("login", null);
    }else if(session.getAttribute("login")!=null
    && session.getAttribute("login").equals("authentication")){
    	msg = "로그인을 하셔야 접근할 수 있는 페이지 입니다.";
    	session.setAttribute("login", null);
    }else if(session.getAttribute("login")!=null
    && session.getAttribute("login").equals("authorizationn")){
    	msg = "관리자만 접근할 수 있는 페이지 입니다.";
    	session.setAttribute("login", null);
    }	
    %>
    <%=msg %>
    </div>
	<form action='loginprocess.jsp' id='loginform'
	method='post'>
	<input type='text' name='id'
	placeholder='아이디를 입력하세요!'
	required='required'/><br/>
	<input type='text' name='pw'
	placeholder='비밀번호를 입력하세요!'
	required='required'/><br/>	
	</form>
	<a href='#'><img src='./images/button.jpg'
	id='login' width='200' height='150'/></a>
</body>
<script>
	document.getElementById('login')
	.addEventListener('click', function(e){
		//loginform 데이터 전송 
		document.getElementById('loginform').submit();
	});
	
</script>
</html>