<div>
	<form action="${pageContext.request.contextPath}/operation" method="post">
	Username: <input type="text" name="username" value="${param.username}" required="required"/><br/>
	Email: <input type="email" name="email" value="${param.email}" required="required"/><br/>
	<input type="hidden" name="usersId" value="${param.usersId}"/>
	<input type="hidden" name="form" value="updateUserOperation"/>
	<input type="submit" value="Update User"/> 
		
	</form>

</div>