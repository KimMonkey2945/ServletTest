<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환결과</title>
</head>

<body>
	<%
	int number = Integer.parseInt(request.getParameter("number"));
	String[] changer = request.getParameterValues("change");

	String resultString = "";
	
	for (String length : changer) {

		if (length.equals("in")) {
			double inch = (double) (number * 0.39370);
			resultString += inch + "inch <br>";
		} else if (length.equals("ft")) {
			double ft = (double) (number * 0.032808);
			resultString += ft + "ft <br>";
		} else if (length.equals("yard")) {
			double yard = (double) (number * 0.010936);
			resultString += yard + "yard <br>";
		} else if (length.equals("m")) {
			double meter = (double) (number * 0.01);
			resultString += meter + "m <br>";
		}
	}
	%>

	<h1>변환결과</h1>
	<br>
	<%=number%><hr>
	<%=resultString%>



</body>

</html>