<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음악 추가하기</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
<table id = "edit">
<tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
    <tr><td>Singer:</td><td><input type="text" name="singer"/></td></tr>
    <tr><td>Genre:</td><td><input type="text" name="genre"/></td></tr>
    <tr><td>Writer:</td><td><input type="text" name="writer"/></td></tr>
    <tr><td>Composer:</td><td><input type="text" name="composer"/></td></tr>
    <tr><td>releaseDate:</td><td><input type="text" name="release"/></td></tr>
    <tr><td>label:</td><td><input type="text" name="label"/></td></tr>

</table>
    <button type = "submit">등록하기</button>
</form>

</body>
</html>