<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Demo</title>
</head>
<body>
<%
	String[] names = {"btk", "pann", "btkpluspann"};

%>
<c:set var="namesArray" value="<%=names %>"/>
${fn:length(namesArray) }
${fn:length("studyeasy.org")}
</body>
</html>