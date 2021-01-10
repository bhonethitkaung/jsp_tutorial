<div>
	<form action="${pageContext.request.contextPath}/operation" method="post">
	Username: <input type="text" name="username" required="required"/><br/>
	Email: <input type="email" name="email" required="required"/><br/>
	<input type="hidden" name="form" value="addUserOperation">
	<input type="submit" value="Add User"/> 
		
	</form>

</div>