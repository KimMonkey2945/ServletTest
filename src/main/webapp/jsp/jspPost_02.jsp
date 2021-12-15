<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산결과</title>
</head>

<body>
	
	<%
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		String cal = request.getParameter("calculate");
		
		double calculate = 0;
		if(cal.equals("+")){
			calculate = (double)number1+number2;
		}else if(cal.equals("-")){
			calculate = (double)number1-number2;
		}else if(cal.equals("X")){
			calculate = (double)number1*number2;
		}else if(cal.equals("/")){
			calculate = (double)number1/number2;
		};
		
	%>
	
	<h3>계산결과</h3>
	<h1><%=number1+cal+number2 + "=" + calculate%></h1>


</body>


</html>