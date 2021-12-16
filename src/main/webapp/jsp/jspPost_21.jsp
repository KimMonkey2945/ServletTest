<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>


<body>

	<form method="post" action="/jsp/jspPost_22.jsp">
		<h1>길이변환</h1>
		
		<input type="text" name="number">cm
		<div class=d-flex>
			<label>인치<input type="checkbox" name=change value="in"></label>
			<label>피트<input type="checkbox" name=change value="ft"></label>
			<label>야드<input type="checkbox" name=change value="yard"></label>
			<label>미터<input type="checkbox" name=change value="m"></label>
		</div>
		<input type="submit" value="변환">
		
	
	</form>



</body>
</html>