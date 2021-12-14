<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습문제01</title>
</head>


<body>
	<%
	int total = 0;
	int[] scores = { 80, 90, 100, 95, 80 };
	for (int i = 0; i < scores.length; i++) {
		total += scores[i];
	}
	float avg = (float) total / scores.length;
	%>
	<b>점수 평균은 <%=avg%> 입니다.
	</b>

	<br>

	<%
	int sum = 0;
	List<String> scoreList = Arrays.asList(new String[] { "X", "O", "O", "O", "X", "O", "O", "O", "X", "O" });
	for (int i = 0; i < scoreList.size(); i++) {
		if (scoreList.get(i).equals("O")) {
			sum += 10;
		}
	}
	%>
	<b>채점 결과는 <%=sum%>점 입니다.
	</b>

	<br>

	<%!public int getTotal(int number) {
		int gtotal = 0;
		for (int i = 1; i <= number; i++) {
			gtotal += i;
		}
		return gtotal;
	}
	%>

	<b>1에서 50까지의 합은 <%=getTotal(50)%> 입니다.
	</b>


	<br>

	<%
	String birthDay = "20010820";
	String birth = birthDay.substring(0, 4);
	int bir = Integer.parseInt(birth);

	Date now = new Date();
	SimpleDateFormat date = new SimpleDateFormat("yyyyMMdd");
	String date2 = date.format(now);
	String date3 = date2.substring(0, 4);
	int nowDay = Integer.parseInt(date3);

	int age = (nowDay - bir);
	%>

	<b>20010820의 나이는 <%=age+1%>살 입니다.
	</b>






</body>

</html>