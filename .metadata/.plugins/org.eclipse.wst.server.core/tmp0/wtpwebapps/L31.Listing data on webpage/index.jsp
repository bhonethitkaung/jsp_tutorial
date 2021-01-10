<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>
<% 
if(request.getAttribute("title") == null){
	out.print("Homepage");
}else{
	out.print(request.getAttribute("title"));	
}
%>
</title>
</head>
<body>
	<ul>
		<li><a href="${pageContext.request.contextPath}/site?page=home">HOME</a></li>
		<li><a href="${pageContext.request.contextPath}/operation?page=listusers">LIST USERS</a></li>
		<li><a href="${pageContext.request.contextPath}/operation?page=adduser">ADD USER</a></li>
	</ul>
</body>
</html>