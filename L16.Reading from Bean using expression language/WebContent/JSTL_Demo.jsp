<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Demo</title>
</head>
<body>
<jsp:useBean id="user" class="org.studyeasy.beans.User" scope="page"></jsp:useBean>

${user.getFirstName()}
${user.lastName}
<c:out value="${user.firstName}"/>
</body>
</html>