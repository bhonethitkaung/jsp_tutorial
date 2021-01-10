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
<c:forEach var="i" begin="0" end="30" step="3">
${i}
<br/>
</c:forEach>

<%
String[] names = new String[3];
names[0] = "btk";
names[1] = "pann";
names[2] = "btkpluspann";

%>

<c:forEach items="<%=names%>" var="name">

${name}
<br/>

</c:forEach>

<c:forTokens items="www.studyeasy.org" delims="." var="temp">
${temp}
<br/>

</c:forTokens>
</body>
</html>