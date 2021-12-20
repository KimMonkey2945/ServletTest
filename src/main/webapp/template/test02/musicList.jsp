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
	
	if(idString != null){
		Integer musicId = Integer.parseInt(idString);
		for(Map<String, Object> music:musicList){
			Integer id = (Integer)music.get("id");
			if(musicId.equals(id)){
				targetMap = music;
			}
		}
	}
	String title = request.getParameter("title");
	if(title != null){
		for(Map<String, Object>music:musicList){
			if(music.get("title").equals(title)){
				targetMap = music;
			}
		}
	}
	
	Integer time = (Integer)targetMap.get("time");
	
	%>
	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />

		<h3 class="mt-3">곡정보</h3>

		<div class="d-flex border border-success">

			<div>
				<img class="p-3" width="250px" alt="<%=targetMap.get("album")%>앨범표지" src="<%=targetMap.get("thumbnail")%>">
			</div>
			<div class="ml-2">
				<div class="display-4"><%=targetMap.get("title")%></div>
				<div class="text-success mt-2"><%=targetMap.get("singer")%></div>
				<div class="text-secondary">
					앨범<label class="ml-4 mt-3"><%=targetMap.get("album")%></label>
				</div>
				<div class="text-secondary">
					재생시간<label class="ml-4"><%=time/60 + " : " + time%60%></label>
				</div>
				<div class="text-secondary">
					작곡가<label class="ml-4"><%=targetMap.get("composer")%></label>
				</div>
				<div class="text-secondary">
					작사가<label class="ml-4"><%=targetMap.get("lyricist")%></label>
				</div>
			</div>
			<%
			}

			}
			%>
		</div>
		<h3 class="mt-4">가사</h3>
		<hr>
		<div>가사 정보 없음</div>
		<hr>

		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>