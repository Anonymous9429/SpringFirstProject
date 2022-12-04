<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.crud.common.BoardDAO" %>
<%@ page import="com.crud.common.BoardVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>

</head>
<body>



<form:form modelAttribute="boardVO" method="POST" action = "../editok">
<form:hidden path="seq"/>
<form action="..editok/" method="post">

 <table id="edit">
<tr><td>Title:</td><td><form:input path="title" /></td></tr>
<tr><td>Singer:</td><td><form:input path="singer" /></td></tr>
     <tr><td>Genre:</td><td><form:input path="genre" /></td></tr>
     <tr><td>Writer:</td><td><form:input path="writer" /></td></tr>
     <tr><td>Composer:</td><td><form:input path="composer" /></td></tr>
     <tr><td>releaseDate:</td><td><form:input path="release" /></td></tr>
     <tr><td>label:</td><td><form:input path="label" /></td></tr>




 </table>
	<button type="submit"> 수정하기 </button>


</form:form>
