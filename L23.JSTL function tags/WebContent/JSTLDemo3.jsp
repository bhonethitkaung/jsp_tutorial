<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:set var="We" value="studyeasy.org"></c:set>
	
	${fn:startsWith("studyeasy.org","S") }<br/>
	${fn:endsWith(We, "org") }<br/>
	${fn:contains(We, "ORG") }<br/>
	${fn:containsIgnoreCase("studyeasy.org", "ORG") }
</body>
</html>