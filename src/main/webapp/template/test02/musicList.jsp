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
<title>음악정보</title>
</head>
<body>
	<%@ include file="infoList.jsp"%>

	<%
	
		String idString = request.getParameter("id");
		Map<String, Object> targetMap = null;
		if(idString != null) {
			// id를 통한 검색
			Integer musicId = Integer.parseInt(idString);
			for(Map<String, Object> music : musicList) {
				Integer id = (Integer)music.get("id");
				if(musicId.equals(id)) {
					targetMap = music;
				}
			}
		}
		
		String title = request.getParameter("title");
		if(title != null) {
			for(Map<String, Object> music : musicList) {
				if(title.equals(music.get("title"))) {
					targetMap = music;
				}
			}
		}
	%>
	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		
		<section>
		
		<% if(targetMap != null) {
			Integer time = (Integer)targetMap.get("time");
			%>
	
			<article class="music-info mt-3">
				<h4>곡정보</h4>
				<div class="info-box d-flex border border-success p-3">
					<div class="ablum-img">
						<img src="<%= targetMap.get("thumbnail") %>" width="150">
					</div>
					
					<div class="detail ml-3">
						<div class="display-4"><%=targetMap.get("title") %></div>
						<div class="text-success font-weight-bold"><%= targetMap.get("singer") %></div>
						<div><small>앨범 : <%=targetMap.get("album") %></small></div>
						<div><small>재생시간 : <%= time / 60 %>:<%= time % 60 %></small></div>
						<div><small>작곡가 : <%= targetMap.get("composer") %></small></div>
						<div><small>작사가 : <%= targetMap.get("lyricist") %></small></div>
					</div>
				</div>
			</article>
			
			
			<article class="mudic-lyrics mt-3">
				<h4>가사</h4>
				<hr>
				<div>가사정보 없음</div>
			</article>
			<% } else { %>
				<article>
					<div class="display-4"> 검색결과 없음 </div>
				</article>
				
			<% } %>
		
		</section>
		<jsp:include page="footer.jsp" />
	
	</div>

</body>
</html>