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
<c:set var="elements" value="${fn:split('www.studyeasy.org', '.') }"/>
<c:forEach var="element" items="${elements }">
${element }
<br/>
</c:forEach>

Elements: ${fn:join(elements, '.') }
</body>
</html>