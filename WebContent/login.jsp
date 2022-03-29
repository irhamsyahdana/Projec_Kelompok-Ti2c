<%@page import ="cn.techtutorial.model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    	User auth = (User) request.getSession().getAttribute("auth");
    	if(auth != null){
    		request.setAttribute("auth", auth);	
    		response.sendRedirect("index.jsp");
    	}
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="includes/head.jsp" %>
<title>Shopping Char Login</title>
</head>
<body>
<%@include file="includes/navbar.jsp" %>
	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">User Login</div>
			<div class="card-body">
				<form action="user-login" method="post">
					<div class="form-group">
						<label>Email address</label><input type="email" name="login-email" class="form-control">
					</div>
					<div class="form-group">
						<label>Password</label><input type="password" name="login-password" class="form-control">
					</div>
					<div class="text-center mt-3">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>
<%@include file="includes/footer.jsp" %>
</body>
</html>