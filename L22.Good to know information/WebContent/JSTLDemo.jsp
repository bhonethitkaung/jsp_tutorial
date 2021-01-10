<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String URL = "<a href='http://google.com'>Home</a>";
ServletContext context = getServletContext();
context.setAttribute("url", URL);

session.setAttribute("author", URL);
%>
${url }
${author }
</body>
</html>