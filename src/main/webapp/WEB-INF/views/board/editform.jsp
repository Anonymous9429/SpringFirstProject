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
<tr><td>Writer:</td><td><form:input path="writer" /></td></tr>
<tr><td>Content:</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
 </table>
	<button type="submit"> 수정하기 </button>


</form:form>
