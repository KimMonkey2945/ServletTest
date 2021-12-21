<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="infoList.jsp" %>
	<header class="d-flex">
		<div class="logo text-success mt-3">
			<h3>Melong</h3>
		</div>
		<!-- 부트스트랩에 인풋그룹을 찾기... -->
		<form method="get" action="/template/test02/musicList.jsp">
			<div class="input-group m-3">
				<input type="text" class="search form-control" name="title" aria-describedby="basic-addon2">
				<div class="input-group-append">
					<input class="btn btn-info" type="submit" value="검색">				
				</div>
			</div>
		</form>
	</header>