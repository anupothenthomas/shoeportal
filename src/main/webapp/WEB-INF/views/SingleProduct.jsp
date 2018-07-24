<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SINGLE PRODUCT</title>

<link rel="stylesheet" href="resources/assets/css/main.css" />

</head>
<body>

<%@include file="header.jsp"%>

<!--  -->

<table
		style="margin: auto; border-style: solid; border-width: 5px; border-color: white; width: 80%; text-align: center;"
		class="table table-striped">
		<br>
		<br>
		<br>
		<br>
		<h1 style="margin: auto; color: white; width: 80%; text-align: center;">SINGLE
			PRODUCT</h1>
		<br>
		<br>
		<b>
			<thead style="color: white; background-color: black;">
				<tr>
					<td style="border-left: solid 1px white;border-bottom: solid 2px white;">ID</td>
					<td style="border-left: solid 1px white;border-bottom: solid 2px white;">NAME</td>
					<td style="border-left: solid 1px white;border-bottom: solid 2px white;">DESCRIPTION</td>
					<td style="border-left: solid 1px white;border-bottom: solid 2px white;">PRICE</td>
					<td style="border-left: solid 1px white;border-bottom: solid 2px white;">BRAND</td>
					<td style="border-left: solid 1px white;border-bottom: solid 2px white;">QUANTITY</td>
					<td style="border-left: solid 1px white;border-bottom: solid 2px white;">IMAGE</td>
					<td style="border-left: solid 1px white;border-bottom: solid 2px white;">QTY</td>
					<td style="border-left: solid 1px white;border-bottom: solid 2px white;">BUY</td>
				</tr>
			</thead>
		</b>
		<tbody>

				<tr>
					<td
						style="border-left: solid 1px white; border-bottom: solid 2px white; background-color: black ;color: white">${sprod.getId()}</td>
					<td
						style="border-left: solid 1px white; border-bottom: solid 2px white;background-color: black ; color: white">
						
						${sprod.getName()}
						
						</td>
					<td
						style="border-left: solid 1px white; border-bottom: solid 2px white; color: white; background-color: black ;">${sprod.getDescription()}</td>
					<td
						style="border-left: solid 1px white; border-bottom: solid 2px white; background-color: black ;color: white">${sprod.getPrice() }</td>
						<td
						style="border-left: solid 1px white; border-bottom: solid 2px white; background-color: black ;color: white">${sprod.getBrand() }</td>
						<td
						style="border-left: solid 1px white; border-bottom: solid 2px white; background-color: black ;color: white">${sprod.getQuantity() }</td>
						
						<td
						style="border-left: solid 1px white; border-bottom: solid 1px white; color: white; background-color: black"><img
						src="${sprod.imageUrl}" style="height: 100px; width: 100px" /></td>
				
					<form action="${pageContext.request.contextPath}/AddProductToCart" method="post"> 	
					
						<input type="hidden" name="id" value="${sprod.getId()}"/>
					
					<td
						style="border-left: solid 1px white; border-bottom: solid 2px white; background-color: black ;color: white">
					
						<input type="text" class="form-control" name="qty"/>
							
					</td>
					<td
						style="border-left: solid 1px white; border-bottom: solid 2px white; background-color: black ;color: white">
						<button type="submit" class="btn btn-danger">Buy</button>
						</td>
					</form>
				</tr>
			
		</tbody>
	</table>

<!--  -->
<%@ include file="footer.jsp"%>
</body>
</html>