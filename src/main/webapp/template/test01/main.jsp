<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>



<title>layout 구성</title>
</head>

<body>
	<%@include file="info.jsp"%>


	<!-- 다 분리해서 만들기.... 집가서 다시 만들기.... 위에꺼는 정적템플릿을 이용해서 사용하기!! 카테고리가 없으면 널이다!!-->


	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />


		<section>
			<table class="table text-center" border-collapse: collapse>
				<thead>
					<tr>
						<th>채널</th>
						<th>채널명</th>
						<th>카테고리</th>
					</tr>
				</thead>
				<%
				for (Map<String, String> channel : list) {
					if (cate == null || channel.get("category").equals(cate)) {
				%>
				<a href="/template/test01/main.jsp?category="<%=channel.get("gategory")%>></a>
				<tr>
					<th><%=channel.get("ch")%></th>
					<th><%=channel.get("name")%></th>
					<th><%=channel.get("category")%></th>
				</tr>


				<%
				}
				}
				%>

			</table>

		</section>


		<jsp:include page="footer.jsp" />



	</div>


</body>


</html>