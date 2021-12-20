<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>melong</title>
</head>
<body>
	<%@ include file="infoList.jsp"%>

	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />

		<section>
			<div class="d-flex mt-3" style="height: auto; width: 100%; border: 1px solid #B2FA5C">
				<img class="d-flex" width="300" alt="아이유사진"
					src="<%=artistInfo.get("photo")%>">
				<div>
					<h3><%=artistInfo.get("name")%></h3>
					<div><%=artistInfo.get("agency")%></div>
					<div><%=artistInfo.get("debute")%></div>
				</div>
			</div>
			<table class="table text-center" border-collapse: collapse>
				<thead>
					<tr>
						<th>no</th>
						<th>제목</th>
						<th>앨범</th>
					</tr>
				</thead>
				<tbody>
					<h3 class="mt-2">
						<b>곡목록</b>
					</h3>
					<%
					for (Map<String, Object> music : musicList) {
					%>
					<tr>
						<td><%=music.get("id")%>
						</th>
						<td><a href="/template/test02/musicList.jsp?id=<%=music.get("id")%>"><%=music.get("title")%></a>
						</th>
						<td><%=music.get("album")%>
						</th>
					</tr>
					<%
					}
					%>


				</tbody>
			</table>

			<hr>
		</section>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>