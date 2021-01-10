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
${fn:toUpperCase("Studyeasy.org") }<br/>
${fn:toLowerCase("STudyeasy.org") }<br/>
${fn:indexOf("Studyeasy", "u")}<br/>
${fn:replace("Studyeasy.org", "Studyeasy", "SuperEasy") }<br/>
${fn:substring("StudyEasy.org", 2, 5) }<br/>
${fn:substringBefore("StudyEasy.org", "Easy") }<br/>
${fn:substringAfter("StudyEasy.org", "Easy") }<br/>

</body>
</html>