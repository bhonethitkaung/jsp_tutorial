<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upload Files</title>
</head>
<body>
<form action="FilesHandler?action=filesUpload" method="post" enctype="multipart/form-data">
Select Files: <input type="file" name="files" multiple/>
<input type="submit" value="Upload"/><br/>
<a href="${pageContext.request.contextPath}/FilesHandler?action=listImages">View available images</a>
</form> 
</body>
</html>