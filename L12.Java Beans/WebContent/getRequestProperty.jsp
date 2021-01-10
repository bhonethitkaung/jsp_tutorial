<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Request Property</title>
</head>
<body>
<jsp:useBean id="user2" class="org.studyeasy.beans.User" scope="request"></jsp:useBean>
First Name: <jsp:getProperty property="firstName" name="user2"/><br/>
Last Name: <jsp:getProperty property="lastName" name="user2"/>
</body>
</html>