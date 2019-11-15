<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List 와 Map 생성</title>
</head>
<%@ page import='java.util.*' %>
<%
	//문자열을 저장할 수 있는 List 생성
	List<String>list = new ArrayList<String>();
	list.add("잉글랜드 프리미어리그");
	list.add("스페인 프리메라리가");
	list.add("독일 분데스리가");
	list.add("이탈리아 세리에A");
	
	Map<String, Object> map = 
			new HashMap<String, Object>();
	map.put("한국", "박세리");
	map.put("미국", "낸시 로페즈");
	map.put("호주", "캐리 웹");
	map.put("스웨덴", "애니카 소렌스탐");
	
    session.setAttribute("list", list);
    session.setAttribute("map", map);
    
%>
<body>
	<a href="opoutput.jsp">연산자 사용</a>	
</body>
</html>