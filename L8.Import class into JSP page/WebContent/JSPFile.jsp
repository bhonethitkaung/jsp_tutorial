<%@ page import="java.util.Date,org.studyeasy.UserDefined"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP File</title>
</head>
<body>

<%= new Date() %>

<br/>

<%
	out.print(new UserDefined().Demo());
%>

</body>
</html>