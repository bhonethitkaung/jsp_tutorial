<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="someNumber" value="654321.123456"/>
<b><c:out value="${someNumber}"/></b>
<br/>
<br/>
Max Integer Digits: <fmt:formatNumber type="number" maxIntegerDigits="3" value="${someNumber }"/><br/>
Max Fraction Digits: <fmt:formatNumber type="number" maxFractionDigits="4" value="${someNumber }"/><br/>
Currency: <fmt:formatNumber value="${someNumber }" type="currency"/><br/>

<fmt:setLocale value="en_US"/>
Currency: <fmt:formatNumber value="${someNumber }" type="currency"/><br/>

</body>
</html>