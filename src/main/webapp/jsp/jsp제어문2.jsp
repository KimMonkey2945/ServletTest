<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>

<body>
	<%
	List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() 
    {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
    list.add(map);
    map = new HashMap<String, Object>() 
    {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() 
    {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
    list.add(map);
    map = new HashMap<String, Object>() 
    {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
    list.add(map);
    map = new HashMap<String, Object>() 
    {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() 
    {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
    list.add(map);
    map = new HashMap<String, Object>() 
    {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
    list.add(map);
    
 	String menu = request.getParameter("menu");
 	String point = request.getParameter("check");
    
	%>
	
	<h1>검색결과</h1>
	
	<table>
	
		<thead>
			<tr>
				<td>메뉴</td>
				<td>상호</td>
				<td>별점</td>
			</tr>	
		</thead>
		<tbody>
			<%for(Map store:list){
			if(store.get("menu").equals(menu)){
 				%>					
			<tr>
				<td><%=store.get("menu")%></td>
				<td><%=store.get("name") %></td>
				<td><%=store.get("point") %></td>
			</tr>			
			<%}
			}%>
		</tbody>
	
	</table>
	

</body>
</html>