<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Hello JSP</h1>


<%! public int x = 22;%>
<%= x %> <br/>
<%= new Integer(2) %><br/>
<%= new String("blah") %><br/>
<%= new java.util.Date() %><br/>
<%= 25*4 %><br/>
<%= 25>4 %><br/>

<br/>
<br/>

<%
int x = 25;
if(x > 25){
	out.println("X is greater than 25");
}else{
	out.println("X is not greater than 25");
}
%>

<br/>
<br/>

<%
for(int i=0; i<10; i++){
	out.print("<br/>");
	out.println(i);
}
%>

<br/>
<br/>

<%!
	String message(){
		return "I love JSP";
	}
%>

<%= message() %>



</body>
</html>