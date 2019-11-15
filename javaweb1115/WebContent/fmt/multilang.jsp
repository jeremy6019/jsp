<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- JSTL 사용 설정  -->
<%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 국제화에서 읽어올 프로퍼티 파일 설정  -->
<fmt:setBundle basename="intro"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--  title은 intro에서 찾아서 출력  -->
<title><fmt:message key="title" /></title>
</head>
<body>
	
</body>
</html>