<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@page import="com.crud.common.BoardDAO, com.crud.common.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>음악 공유 플레이리스트</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='delete/' + id;
	}
</script>
</head>
<body>
<h1>음악 공유 플레이리스트</h1>

<table id="posts" width="90%">
<tr>
	<th>Id</th>
	<th>Title</th>
	<th>Singer</th>
	<th>Genre</th>
	<th>Writer</th>
	<th>Composer</th>
	<th>releaseDate</th>
	<th>Label</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${posts}" var="u">
	<tr>
		<td>${u.seq}</td>
		<td>${u.title}</td>
		<td>${u.singer}</td>
		<td>${u.genre}</td>
		<td>${u.writer}</td>
		<td>${u.composer}</td>
		<td>${u.release}</td>
		<td>${u.label}</td>
		<td><a href="editform/${u.seq}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'"> Add New Post</button>
</body>
</html>