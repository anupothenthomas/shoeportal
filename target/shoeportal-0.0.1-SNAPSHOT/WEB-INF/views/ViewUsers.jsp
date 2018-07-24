<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

<link href="https://fonts.googleapis.com/css?family=Concert+One|Pacifico" rel="stylesheet">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="resources/assets/css/main.css" />

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
</head>
<body style="background-color:black;">

<%@ include file="header.jsp"%>

	<table style="font-family:Concert One; margin: auto; border-style: solid; border-width:5px; border-color: white; width: 80%; text-align:center;"
	class="table">
	<br><br><br><br>
	<h2 style="font-family:Concert One; margin: auto; color:white; text-align:center;"><u>VIEW USERS</u></h2>
	<br><br>
	
		<b>
		<thead style="color:black;margin:auto; background-color: white;">
			<tr>
				<td style="border-left: solid 1px black;">ID</td>
				<td style="border-left: solid 1px black;">NAME</td>
				<td style="border-left: solid 1px black;">EMAIL</td>
				<td style="border-left: solid 1px black;">PASSWORD</td>
				<td style="border-left: solid 1px black;">PHONE</td>
				<td style="border-left: solid 1px black;">SHIPPING ADDRESS</td>
				<td style="border-left: solid 1px black;">BILLING ADDRESS</td>
				<td style="border-left: solid 1px black;">ROLE</td>
				<td style="border-left: solid 1px black;">UPDATE</td>
				<td style="border-left: solid 1px black;">DELETE</td>
			</tr>
		</thead>
		</b>
		<tbody>
		
			<c:forEach items="${usernlist}" var="x">
				<tr>
					<td style="border-left: solid 1px white; border-bottom: solid 1px white; color:white">${x.getId()}</td>
					<td style="border-left: solid 1px white; border-bottom: solid 1px white; color:white">${x.getUsername()}</td>
					<td style="border-left: solid 1px white; border-bottom: solid 1px white; color:white">${x.getEmail()}</td>
					<td style="border-left: solid 1px white; border-bottom: solid 1px white; color:white">${x.getPassword()}</td>
					<td style="border-left: solid 1px white; border-bottom: solid 1px white; color:white">${x.getPhone()}</td>
					<td style="border-left: solid 1px white; border-bottom: solid 1px white; color:white">${x.getShipAddress()}</td>
					<td style="border-left: solid 1px white; border-bottom: solid 1px white; color:white">${x.getBillAddress()}</td>
					<td style="border-left: solid 1px white; border-bottom: solid 1px white; color:white">${x.getRole()}</td>
					<td style="border-left: solid 1px white; border-bottom: solid 1px white; color:white"><a href = "${pageContext.request.contextPath}/UpdateUsersFromDB?id=${x.getId()}" class="btn btn-primary">UPDATE</a></td>
					<td style="border-left: solid 1px white; border-bottom: solid 1px white; color:white"><a href="${pageContext.request.contextPath}/DeleteUsersFromDB?id=${x.getId()}" class="btn btn-danger">DELETE</a></td>
				</tr>
			</c:forEach>			
			
		</tbody>
	</table>
<br>

<%@ include file="footer.jsp"%>

</body>
</html>