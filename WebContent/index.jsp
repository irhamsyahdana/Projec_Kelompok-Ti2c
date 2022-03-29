<%@page import="java.util.List" %>
<%@page import ="cn.techtutorial.dao.ProductDao"%>
<%@page import ="cn.techtutorial.connection.DbCon"%>
<%@page import ="cn.techtutorial.model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    	User auth = (User) request.getSession().getAttribute("auth");
    	if(auth != null){
    		request.setAttribute("auth", auth);	
    	}
    	
    	
    	ProductDao pd = new ProductDao(DbCon.getConnection());
    	List<Product> products = pd.getAllProducts();
    	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Welcome To Shopping Cart</title>
<%@include file="includes/head.jsp" %>
</head>
<body>
<%@include file="includes/navbar.jsp" %>


	<div class="container">
		<div class="card-header my-3">All Product</div>
		<div class="row">
		
	    <%/*
			if(!products.isEmpty()){
				for(Product p:products){
					out.print(p.getCategory());
				}
			}
		*/%>
		
		 <%
			if(!products.isEmpty()){
				for(Product p:products){%>
					<div class="col-md-3 my-3">
					<div class="card w-100" style="width: 18rem;">
						<img src="product-images/<%= p.getImage() %>" class="card-img-top" alt="">
						<div class="card-body">
							<h5 class="card-title"><%= p.getName() %></h5>
							<h6 class="price"><%= p.getPrice() %></h6>
							<h6 class="category"><%= p.getCategory() %></h6>
							<div class="mt-3 d-flex justify-content-between">
								<a href="#" class="btn btn-primary">All Product</a>
								<a href="#" class="btn btn-danger">Buy Now</a>
							</div>
						</div>
					</div>
				</div>
				<%}
			}
		%>
		</div>
	</div>


	<%@include file="includes/footer.jsp" %>
</body>
</html>