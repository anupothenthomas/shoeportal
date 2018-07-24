<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shoeportal:Contact Us</title>
</head>
<body >
 <%@ include file="header.jsp"%>
 
 
 <h1 style="margin: auto;margin-top:100px; color: white; text-align: center; font-family: Helvetica;">LEAVE US A MESSAGE</h1>
 <h1 style="margin: auto; color: white; text-align: center; font-family: Helvetica;">&</h1>
 <h3 style="margin: auto; color: white; text-align: center; font-family: Helvetica;">WE'LL GET BACK TO YOU</h3>
		
 <form style="margin: auto; width: 30%; text-align: center;" method="post" action="#">
		<br> <input autofocus="" path="" required="" type="text" name="" placeholder="Enter User Name" /> 
			<br> 
			<input path="" required="" name="email" type="email" placeholder="Enter Email" /> 
			<br> 
			<input name="" required="" type="text" path="" placeholder="Enter phone number" /> 
			<br> 
			<input path="" required="" type="text" name="" placeholder="What can we assist you with.." /> 
			<br>
			<input type="checkbox" name="address" value="address">
			
		<input path="" type="submit" value="Send" />
	</form>
 
		<%@ include file="footer.jsp"%>

</body>
</html>