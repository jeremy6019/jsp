<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더 읽기</title>
</head>
<body>
	<%@ page import="java.util.*, java.io.*" %>
	<%
		// 모든 헤더이름을 출력하기 위해서 헤더에 접근가능한 반복자를 생성
		Enumeration<String> headers = request.getHeaderNames();
		while(headers.hasMoreElements()){
			String header = headers.nextElement();
	%>
	<p><%=header %></p>
	<%} %>
	
	<%
		String userAgent = request.getHeader("user-agent");
		String referer = request.getHeader("referrer");
	%>
	<p>접속한 클라이언트 시스템 정보:<%=userAgent %></p>
	<p>어떤 경로를 통해서 접속했는지 정보:<%=referer %></p>
	
	<%
		// 대부분 로그 파일은 날짜별로 생성
		// 현재 날짜를 가져와서 파일명을 만들기
		Calendar cal = new GregorianCalendar();
		Date date = new Date(cal.getTimeInMillis());
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyyMMdd");
		String filename = sdf.format(date);
		
		// 프로젝트 내의 log 디렉토리의 절대 경로 가져오기
		String log = application.getRealPath("/log");
		// 실제 디렉토리 경로 확인
		System.out.println(log);
		
		// 출력할 파일 객체를 생성
		FileOutputStream fos1 = new FileOutputStream(log + "/" + filename + "_useragent.txt", true);
		FileOutputStream fos2 = new FileOutputStream(log + "/" + filename + "_referer.txt", true);
		// 파일에 문자열을 기록하는 객체 생성
		PrintWriter pw1 = new PrintWriter(fos1);
		PrintWriter pw2 = new PrintWriter(fos2);
		// 기록
		pw1.print(userAgent);
		pw2.print(referer);
		// 버퍼의 내용을 비움
		pw1.flush();
		pw2.flush();
		// 정리
		fos1.close();
		fos2.close();
		pw1.close();
		pw2.close();
	%>
</body>
</html>