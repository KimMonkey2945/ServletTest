<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산</title>
</head>

<body>
	<form method="post" action="/jsp/jspPost_02.jsp">
		<input type="text" name="number1">
		<select name="calculate">
			<option value="+">+</option>
			<option value="-">-</option>
			<option value="X">X</option>
			<option value="/">/</option>
		</select>
		<input type="text" name="number2">
		<input type="submit" value="계산">
	
	
	</form>
	
</body>

</html>