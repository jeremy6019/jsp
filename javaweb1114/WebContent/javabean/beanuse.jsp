<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  없을 때는 생성을 하지만 있을 때는 그 데이터를 사용  -->    
<jsp:useBean id="data"
class="domain.Data" scope="request" />   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>빈 사용 </title>
</head>
<body>
번호:<%=data.getNum() %><br/>
이름:<%=data.getName() %><br/>
생일:<%=data.getBirthday() %><br/>

</body>
</html>