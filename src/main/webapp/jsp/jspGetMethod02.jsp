<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>

<body>
	<%
	Date now = new Date();
	
	SimpleDateFormat formatter = null;
	String what = request.getParameter("what");
	
	if(what.equals("day")){
		formatter =  new SimpleDateFormat("오늘 날짜 yyyy년 M월 dd일 ");	
	}else if(what.equals("time")){
		formatter = new SimpleDateFormat("현재 시간 HH시 mm분 ss초");
	}
		String want = formatter.format(now);
	%>
		
		<h1><%=want%></h1>
	

</body>

</html>