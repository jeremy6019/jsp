<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- formatting 라이브러리 설정 -->
<%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포맷팅 라이브러리</title>
</head>
<body>
	<p>날짜:<fmt:formatDate value="${date}"
	type="date" /></p>
	<p>시간:<fmt:formatDate value="${date}"
	type="time" /></p>
	<p>날짜:<fmt:formatDate value="${date}"
	type="date" pattern="yyyy-MM-dd"/></p>
	
	<h3>숫자 출력</h3>
	<p>천 단위 구분 기호:<fmt:formatNumber value="${num}"
	groupingUsed="true" /></p>
	<p>통화 기호:<fmt:formatNumber value="${num}"
	type="currency"/></p>
	<p>숫자 서식:<fmt:formatNumber value="${num}"
	pattern="#,000"/></p>
	
	
	<h3>한국 설정</h3>
	<fmt:setLocale value="ko_kr"/>
	<p>날짜:<fmt:formatDate value="${date}"
	type="date" /></p>
	<p>통화 기호:<fmt:formatNumber value="${num}"
	type="currency"/></p>
	
	<h3>영어 설정</h3>
	<fmt:setLocale value="en_us"/>
	<p>날짜:<fmt:formatDate value="${date}"
	type="date" /></p>
	<p>통화 기호:<fmt:formatNumber value="${num}"
	type="currency"/></p>
	
	<h3>중국 설정</h3>
	<fmt:setLocale value="zh_cn"/>
	<p>날짜:<fmt:formatDate value="${date}"
	type="date" /></p>
	<p>통화 기호:<fmt:formatNumber value="${num}"
	type="currency"/></p>
	
	<h3>한국 서울 시간대 설정</h3>
	<fmt:timeZone value="Asia/Seoul">
	<p>시간:<fmt:formatDate value="${date}"
	type="time"/></p>	
	</fmt:timeZone>
	<h3>프랑스 파리 시간대 설정</h3>
	<fmt:timeZone value="Europe/Paris">
	<p>시간:<fmt:formatDate value="${date}"
	type="time"/></p>	
	</fmt:timeZone>
</body>
</html>






