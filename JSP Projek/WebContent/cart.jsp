<%@page import ="cn.techtutorial.connection.DbCon"%>
<%@page import ="cn.techtutorial.model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    	User auth = (User) request.getSession().getAttribute("auth");
    	if(auth != null){
    		request.setAttribute("auth", auth);	
    	}
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="includes/head.jsp" %>
<title>Chart Page</title>
</head>
<body>
<%@include file="includes/navbar.jsp" %>


<%@include file="includes/footer.jsp" %>
</body>
</html>