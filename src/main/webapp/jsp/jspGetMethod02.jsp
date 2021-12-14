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
	Date date = new Date();
	SimpleDateFormat day = new SimpleDateFormat("오늘 날짜 yyyy년M월dd일");
	SimpleDateFormat time = new SimpleDateFormat("현재 시간 HH시mm분ss초");
	
	
	String nowDay = day.format(date);
	String nowTime =time.format(date);
	
	String what = request.getParameter("what");
	
	//what = date
	//날짜 보여주고
	
	//what = time
	//시간 보여주고
	
	String formatString = null;
	
	if(what.equals("date")){
		formatString = nowDay;
	}else if(what.equals("time")){
		formatString = nowTime;		
	}
	%>
	
	
	

</body>

</html>